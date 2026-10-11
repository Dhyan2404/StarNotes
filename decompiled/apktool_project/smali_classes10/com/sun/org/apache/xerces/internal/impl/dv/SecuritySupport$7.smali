.class Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport;->getFileExists(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport$7;->this$0:Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport$7;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/SecuritySupport$7;->val$f:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
