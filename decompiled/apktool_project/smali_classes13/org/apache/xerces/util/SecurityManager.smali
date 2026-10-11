.class public final Lorg/apache/xerces/util/SecurityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:I = 0x186a0

.field public static final d:I = 0xbb8


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    iput v0, p0, Lorg/apache/xerces/util/SecurityManager;->a:I

    const/16 v0, 0xbb8

    iput v0, p0, Lorg/apache/xerces/util/SecurityManager;->b:I

    return-void
.end method


# virtual methods
.method public getEntityExpansionLimit()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/SecurityManager;->a:I

    return p0
.end method

.method public getMaxOccurNodeLimit()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/util/SecurityManager;->b:I

    return p0
.end method

.method public setEntityExpansionLimit(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/util/SecurityManager;->a:I

    return-void
.end method

.method public setMaxOccurNodeLimit(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xerces/util/SecurityManager;->b:I

    return-void
.end method
