.class public final synthetic Lcom/sunia/HTREnginev2/cig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Z

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cig;->a:Ljava/io/File;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/cig;->b:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cig;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cig;->a:Ljava/io/File;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/cig;->b:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cig;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lonyx/org/apache/commons/io/FileUtils;->a(Ljava/io/File;Z[Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
