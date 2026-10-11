.class final Lsun/font/SunFontManager$FontRegistrationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/SunFontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontRegistrationInfo"
.end annotation


# instance fields
.field fontFilePath:Ljava/lang/String;

.field fontFormat:I

.field fontRank:I

.field javaRasterizer:Z

.field nativeNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFilePath:Ljava/lang/String;

    iput-object p2, p0, Lsun/font/SunFontManager$FontRegistrationInfo;->nativeNames:[Ljava/lang/String;

    iput p3, p0, Lsun/font/SunFontManager$FontRegistrationInfo;->fontFormat:I

    iput-boolean p4, p0, Lsun/font/SunFontManager$FontRegistrationInfo;->javaRasterizer:Z

    iput p5, p0, Lsun/font/SunFontManager$FontRegistrationInfo;->fontRank:I

    return-void
.end method
