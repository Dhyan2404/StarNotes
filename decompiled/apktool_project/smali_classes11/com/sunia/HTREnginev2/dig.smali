.class public final synthetic Lcom/sunia/HTREnginev2/dig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dig;->a:Ljava/io/File;

    iput-wide p2, p0, Lcom/sunia/HTREnginev2/dig;->b:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dig;->a:Ljava/io/File;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/dig;->b:J

    invoke-static {v0, v1, v2}, Lonyx/org/apache/commons/io/FileUtils;->e(Ljava/io/File;J)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
