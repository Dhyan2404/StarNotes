.class public Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JPEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCS"
.end annotation


# static fields
.field public static final sRGB:Ljava/awt/color/ColorSpace;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Ljava/awt/color/ColorSpace;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
