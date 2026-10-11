.class public interface abstract Lcom/sun/org/apache/xerces/internal/xs/datatypes/XSDecimal;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBigDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract getBigInteger()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getInt()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public abstract getShort()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method
