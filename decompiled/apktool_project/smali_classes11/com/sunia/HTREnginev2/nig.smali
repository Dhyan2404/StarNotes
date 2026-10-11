.class public final synthetic Lcom/sunia/HTREnginev2/nig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nig;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nig;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nig;->a:Ljava/io/File;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nig;->b:Ljava/io/File;

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/FileUtils;->p(Ljava/io/File;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
