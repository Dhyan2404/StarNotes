.class Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$3;->this$0:Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    if-ne v1, p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method
