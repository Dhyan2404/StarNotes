.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComplexTypeRecoverableError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3436303834353239L


# instance fields
.field errorElem:Lorg/w3c/dom/Element;

.field errorSubstText:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lorg/w3c/dom/Element;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->this$0:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser;

    .line 6
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lorg/w3c/dom/Element;

    return-void
.end method
