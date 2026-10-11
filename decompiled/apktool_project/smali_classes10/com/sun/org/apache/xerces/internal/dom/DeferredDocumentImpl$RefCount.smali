.class Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefCount"
.end annotation


# instance fields
.field fCount:I

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl$RefCount;->this$0:Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
