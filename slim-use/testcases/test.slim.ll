; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %b, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %c, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %d, metadata !21, metadata !DIExpression()), !dbg !22
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* noundef %a, i32* noundef %b, i32* noundef %c, i32* noundef %d), !dbg !23
  %i = load i32, i32* %b, align 4, !dbg !24
  %i1 = load i32, i32* %a, align 4, !dbg !25
  %add = add nsw i32 %i, %i1, !dbg !26
  store i32 %add, i32* %a, align 4, !dbg !27
  br label %while.cond, !dbg !28

while.cond:                                       ; preds = %while.body, %entry
  %i2 = load i32, i32* %a, align 4, !dbg !29
  %cmp = icmp slt i32 %i2, 10, !dbg !30
  br i1 %cmp, label %while.body, label %while.end, !dbg !28

while.body:                                       ; preds = %while.cond
  %i3 = load i32, i32* %a, align 4, !dbg !31
  %add1 = add nsw i32 %i3, 3, !dbg !33
  store i32 %add1, i32* %a, align 4, !dbg !34
  br label %while.cond, !dbg !28, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %i4 = load i32, i32* %b, align 4, !dbg !38
  ret i32 %i4, !dbg !39
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
!1 = !DIFile(filename: "test.c", directory: "/home/jarvis/final/slim-use/testcases", checksumkind: CSK_MD5, checksum: "459a706fa3301fa0b1fe8d17e051c616")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !11, scopeLine: 6, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 7, type: !13)
!16 = !DILocation(line: 7, column: 6, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 7, type: !13)
!18 = !DILocation(line: 7, column: 8, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 7, type: !13)
!20 = !DILocation(line: 7, column: 10, scope: !10)
!21 = !DILocalVariable(name: "d", scope: !10, file: !1, line: 7, type: !13)
!22 = !DILocation(line: 7, column: 12, scope: !10)
!23 = !DILocation(line: 8, column: 2, scope: !10)
!24 = !DILocation(line: 9, column: 6, scope: !10)
!25 = !DILocation(line: 9, column: 10, scope: !10)
!26 = !DILocation(line: 9, column: 8, scope: !10)
!27 = !DILocation(line: 9, column: 4, scope: !10)
!28 = !DILocation(line: 10, column: 2, scope: !10)
!29 = !DILocation(line: 10, column: 8, scope: !10)
!30 = !DILocation(line: 10, column: 10, scope: !10)
!31 = !DILocation(line: 11, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 16)
!33 = !DILocation(line: 11, column: 9, scope: !32)
!34 = !DILocation(line: 11, column: 5, scope: !32)
!35 = distinct !{!35, !28, !36, !37}
!36 = !DILocation(line: 12, column: 2, scope: !10)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !DILocation(line: 13, column: 9, scope: !10)
!39 = !DILocation(line: 13, column: 2, scope: !10)
