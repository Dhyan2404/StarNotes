.class public Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_TYPE_DEFAULT:S = 0x3s

.field public static final DEFAULT_TYPE_FIXED:S = 0x1s

.field public static final DEFAULT_TYPE_IMPLIED:S = 0x0s

.field public static final DEFAULT_TYPE_REQUIRED:S = 0x2s

.field public static final TYPE_CDATA:S = 0x0s

.field public static final TYPE_ENTITY:S = 0x1s

.field public static final TYPE_ENUMERATION:S = 0x2s

.field public static final TYPE_ID:S = 0x3s

.field public static final TYPE_IDREF:S = 0x4s

.field public static final TYPE_NAMED:S = 0x7s

.field public static final TYPE_NMTOKEN:S = 0x5s

.field public static final TYPE_NOTATION:S = 0x6s


# instance fields
.field public defaultType:S

.field public defaultValue:Ljava/lang/String;

.field public enumeration:[Ljava/lang/String;

.field public list:Z

.field public name:Ljava/lang/String;

.field public nonNormalizedDefaultValue:Ljava/lang/String;

.field public type:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    iput-short v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;)V
    .locals 4

    .line 11
    iget-short v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    iput-short v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 12
    iget-object v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 14
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 17
    :goto_0
    iget-boolean v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 18
    iget-short v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    iput-short v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 19
    iget-object v0, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-short p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->type:S

    .line 2
    iput-object p2, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->name:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 3
    array-length p1, p3

    if-lez p1, :cond_0

    .line 4
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 5
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->enumeration:[Ljava/lang/String;

    .line 7
    :goto_0
    iput-boolean p4, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->list:Z

    .line 8
    iput-short p5, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultType:S

    .line 9
    iput-object p6, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->defaultValue:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    return-void
.end method
