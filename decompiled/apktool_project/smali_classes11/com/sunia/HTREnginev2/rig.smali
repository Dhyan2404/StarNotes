.class public final synthetic Lcom/sunia/HTREnginev2/rig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

.field public final synthetic b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rig;->a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rig;->b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rig;->a:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rig;->b:Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/FileUtils;->i(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;Ljava/io/File;)Lonyx/org/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p0

    return-object p0
.end method
