.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneElement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowNonSchemaAttr:Z

.field public attrList:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneElement;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneElement;->attrList:Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;

    .line 4
    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneElement;->allowNonSchemaAttr:Z

    return-void
.end method
