.class public Lcom/twelvemonkeys/util/convert/MissingTypeException;
.super Lcom/twelvemonkeys/util/convert/ConversionException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Cannot convert, missing type"

    .line 1
    invoke-direct {p0, v0}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/util/convert/ConversionException;-><init>(Ljava/lang/String;)V

    return-void
.end method
