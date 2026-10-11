.class public Lsun/font/FontConfigManager$FcCompFont;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FontConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FcCompFont"
.end annotation


# instance fields
.field public allFonts:[Lsun/font/FontConfigManager$FontConfigFont;

.field public compFont:Lsun/font/CompositeFont;

.field public fcFamily:Ljava/lang/String;

.field public fcName:Ljava/lang/String;

.field public firstFont:Lsun/font/FontConfigManager$FontConfigFont;

.field public jdkName:Ljava/lang/String;

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
