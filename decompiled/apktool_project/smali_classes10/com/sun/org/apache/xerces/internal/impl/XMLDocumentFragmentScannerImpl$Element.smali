.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation


# instance fields
.field public fRawname:[C

.field public next:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;

.field public qname:Lcom/sun/org/apache/xerces/internal/xni/QName;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;->qname:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;->fRawname:[C

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;->next:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Element;

    return-void
.end method
