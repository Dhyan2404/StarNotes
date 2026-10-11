.class public Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/color/ColorSpaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance(I)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    const v1, 0x68656164

    invoke-virtual {v0, v1}, Ljava/awt/color/ICC_Profile;->getData(I)[B

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[B
    .locals 1

    sget-object v0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$g;->a:[B

    return-object v0
.end method
