; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %b, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %c, metadata !19, metadata !DIExpression()), !dbg !20
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* noundef %a, i32* noundef %b, i32* noundef %c), !dbg !21
  %i = load i32, i32* %a, align 4, !dbg !22
  %i1 = load i32, i32* %b, align 4, !dbg !24
  %cmp = icmp sgt i32 %i, %i1, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  %i2 = load i32, i32* %a, align 4, !dbg !27
  %add = add nsw i32 %i2, 1, !dbg !29
  store i32 %add, i32* %a, align 4, !dbg !30
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  %i3 = load i32, i32* %a, align 4, !dbg !32
  %sub = sub nsw i32 %i3, 1, !dbg !34
  store i32 %sub, i32* %a, align 4, !dbg !35
  %i4 = load i32, i32* %b, align 4, !dbg !36
  %i5 = load i32, i32* %c, align 4, !dbg !37
  %add1 = add nsw i32 %i4, %i5, !dbg !38
  store i32 %add1, i32* %b, align 4, !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !40

while.cond:                                       ; preds = %while.body, %if.end
  %i6 = load i32, i32* %a, align 4, !dbg !41
  %i7 = load i32, i32* %b, align 4, !dbg !42
  %cmp2 = icmp sle i32 %i6, %i7, !dbg !43
  br i1 %cmp2, label %while.body, label %while.end, !dbg !40

while.body:                                       ; preds = %while.cond
  %i8 = load i32, i32* %a, align 4, !dbg !44
  %inc = add nsw i32 %i8, 1, !dbg !44
  store i32 %inc, i32* %a, align 4, !dbg !44
  br label %while.cond, !dbg !40, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  %i9 = load i32, i32* %a, align 4, !dbg !49
  %i10 = load i32, i32* %b, align 4, !dbg !50
  %add3 = add nsw i32 %i9, %i10, !dbg !51
  %i11 = load i32, i32* %c, align 4, !dbg !52
  %add4 = add nsw i32 %add3, %i11, !dbg !53
  ret i32 %add4, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @__isoc99_scanf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/jarvis/final/slim-use/testcases", checksumkind: CSK_MD5, checksum: "6039b628f6f6ba628e7fb44b1680d149")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !11, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 16, type: !13)
!16 = !DILocation(line: 16, column: 6, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 16, type: !13)
!18 = !DILocation(line: 16, column: 8, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 16, type: !13)
!20 = !DILocation(line: 16, column: 10, scope: !10)
!21 = !DILocation(line: 17, column: 2, scope: !10)
!22 = !DILocation(line: 18, column: 5, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 18, column: 5)
!24 = !DILocation(line: 18, column: 9, scope: !23)
!25 = !DILocation(line: 18, column: 7, scope: !23)
!26 = !DILocation(line: 18, column: 5, scope: !10)
!27 = !DILocation(line: 19, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 18, column: 12)
!29 = !DILocation(line: 19, column: 9, scope: !28)
!30 = !DILocation(line: 19, column: 5, scope: !28)
!31 = !DILocation(line: 20, column: 2, scope: !28)
!32 = !DILocation(line: 21, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !23, file: !1, line: 20, column: 9)
!34 = !DILocation(line: 21, column: 9, scope: !33)
!35 = !DILocation(line: 21, column: 5, scope: !33)
!36 = !DILocation(line: 22, column: 7, scope: !33)
!37 = !DILocation(line: 22, column: 11, scope: !33)
!38 = !DILocation(line: 22, column: 9, scope: !33)
!39 = !DILocation(line: 22, column: 5, scope: !33)
!40 = !DILocation(line: 24, column: 2, scope: !10)
!41 = !DILocation(line: 24, column: 8, scope: !10)
!42 = !DILocation(line: 24, column: 13, scope: !10)
!43 = !DILocation(line: 24, column: 10, scope: !10)
!44 = !DILocation(line: 25, column: 4, scope: !45)
!45 = distinct !DILexicalBlock(scope: !10, file: !1, line: 24, column: 16)
!46 = distinct !{!46, !40, !47, !48}
!47 = !DILocation(line: 26, column: 2, scope: !10)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 27, column: 9, scope: !10)
!50 = !DILocation(line: 27, column: 13, scope: !10)
!51 = !DILocation(line: 27, column: 11, scope: !10)
!52 = !DILocation(line: 27, column: 17, scope: !10)
!53 = !DILocation(line: 27, column: 15, scope: !10)
!54 = !DILocation(line: 27, column: 2, scope: !10)
