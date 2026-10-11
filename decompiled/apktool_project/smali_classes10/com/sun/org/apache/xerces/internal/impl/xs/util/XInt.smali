.class public final Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    return-void
.end method


# virtual methods
.method public final equals(Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;)Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final intValue()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    return p0
.end method

.method public final shortValue()S
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    int-to-short p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XInt;->fValue:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
