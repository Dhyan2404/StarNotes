.class public Lsun/java2d/pipe/hw/ContextCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAPS_EMPTY:I = 0x0

.field public static final CAPS_MULTITEXTURE:I = 0x10

.field public static final CAPS_PS20:I = 0x80

.field public static final CAPS_PS30:I = 0x100

.field public static final CAPS_RT_PLAIN_ALPHA:I = 0x2

.field public static final CAPS_RT_TEXTURE_ALPHA:I = 0x4

.field public static final CAPS_RT_TEXTURE_OPAQUE:I = 0x8

.field public static final CAPS_TEXNONPOW2:I = 0x20

.field public static final CAPS_TEXNONSQUARE:I = 0x40

.field protected static final FIRST_PRIVATE_CAP:I = 0x10000


# instance fields
.field protected final adapterId:Ljava/lang/String;

.field protected final caps:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "unknown adapter"

    :goto_0
    iput-object p2, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->adapterId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdapterId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->adapterId:Ljava/lang/String;

    return-object p0
.end method

.method public getCaps()I
    .locals 0

    iget p0, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContextCapabilities: adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->adapterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    if-nez v1, :cond_0

    const-string p0, "CAPS_EMPTY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "CAPS_RT_PLAIN_ALPHA|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "CAPS_RT_TEXTURE_ALPHA|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "CAPS_RT_TEXTURE_OPAQUE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string v1, "CAPS_MULTITEXTURE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "CAPS_TEXNONPOW2|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string v1, "CAPS_TEXNONSQUARE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget v1, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "CAPS_PS20|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget p0, p0, Lsun/java2d/pipe/hw/ContextCapabilities;->caps:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_8

    const-string p0, "CAPS_PS30|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
