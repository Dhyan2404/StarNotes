.class public Lorg/apache/xerces/impl/xpath/XPath$Axis;
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
    name = "Axis"
.end annotation


# static fields
.field public static final ATTRIBUTE:S = 0x2s

.field public static final CHILD:S = 0x1s

.field public static final DESCENDANT:S = 0x4s

.field public static final SELF:S = 0x3s


# instance fields
.field public final type:S


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-short p1, p1, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    iput-short p1, p0, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/XPath$Axis;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xpath/XPath$Axis;-><init>(Lorg/apache/xerces/impl/xpath/XPath$Axis;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short p0, p0, Lorg/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "???"

    return-object p0

    :cond_0
    const-string p0, "descendant"

    return-object p0

    :cond_1
    const-string p0, "self"

    return-object p0

    :cond_2
    const-string p0, "attribute"

    return-object p0

    :cond_3
    const-string p0, "child"

    return-object p0
.end method
