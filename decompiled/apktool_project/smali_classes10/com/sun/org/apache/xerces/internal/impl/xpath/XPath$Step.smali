.class public Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Step"
.end annotation


# instance fields
.field public axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

.field public nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    .line 6
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "."

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->nodeTest:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const-string p0, "//"

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "??? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Step;->axis:Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$Axis;->type:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
