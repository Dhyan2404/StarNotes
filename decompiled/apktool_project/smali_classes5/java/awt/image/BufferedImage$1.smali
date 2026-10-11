.class final Ljava/awt/image/BufferedImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/image/BufferedImage;->isStandard(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cmClass:Ljava/lang/Class;

.field final synthetic val$smClass:Ljava/lang/Class;

.field final synthetic val$wrClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/image/BufferedImage$1;->val$cmClass:Ljava/lang/Class;

    iput-object p2, p0, Ljava/awt/image/BufferedImage$1;->val$smClass:Ljava/lang/Class;

    iput-object p3, p0, Ljava/awt/image/BufferedImage$1;->val$wrClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Ljava/awt/image/BufferedImage$1;->val$cmClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/BufferedImage$1;->val$smClass:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava/awt/image/BufferedImage$1;->val$wrClass:Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    instance-of p0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage$1;->run()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
