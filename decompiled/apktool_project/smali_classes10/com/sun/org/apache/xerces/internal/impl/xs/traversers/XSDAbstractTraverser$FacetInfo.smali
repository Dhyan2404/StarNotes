.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacetInfo"
.end annotation


# instance fields
.field fFixedFacets:S

.field fPresentFacets:S

.field facetdata:Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;

.field nodeAfterFacets:Lorg/w3c/dom/Element;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDAbstractTraverser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
