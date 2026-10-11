.class Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$5;->this$0:Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12;

    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/compiler/SecuritySupport12$5;->val$file:Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
