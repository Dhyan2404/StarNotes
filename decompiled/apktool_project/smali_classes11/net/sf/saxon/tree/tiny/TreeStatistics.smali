.class public Lnet/sf/saxon/tree/tiny/TreeStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ASSERTION_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

.field public final FN_PARSE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

.field public final RESULT_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

.field public final SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

.field public final TEMPORARY_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/Statistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    new-instance v0, Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/Statistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->TEMPORARY_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    new-instance v0, Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/Statistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->RESULT_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    new-instance v0, Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/Statistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->ASSERTION_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    new-instance v0, Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-direct {v0}, Lnet/sf/saxon/tree/tiny/Statistics;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->FN_PARSE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    return-void
.end method
