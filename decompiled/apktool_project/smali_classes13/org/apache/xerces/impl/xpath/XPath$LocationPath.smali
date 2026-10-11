.class public Lorg/apache/xerces/impl/xpath/XPath$LocationPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationPath"
.end annotation


# instance fields
.field public final steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xpath/XPath$LocationPath;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/xerces/impl/xpath/XPath$Step;

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xpath/XPath$Step;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xpath/XPath$Step;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Lorg/apache/xerces/impl/xpath/XPath$Step;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;-><init>(Lorg/apache/xerces/impl/xpath/XPath$LocationPath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lorg/apache/xerces/impl/xpath/XPath$Step;->axis:Lorg/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v3, v3, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/xerces/impl/xpath/XPath$Step;->axis:Lorg/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v2, v2, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    if-eq v2, v4, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lorg/apache/xerces/impl/xpath/XPath$Step;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xpath/XPath$Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
