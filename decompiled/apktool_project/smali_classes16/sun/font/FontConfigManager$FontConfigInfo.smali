.class public Lsun/font/FontConfigManager$FontConfigInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FontConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontConfigInfo"
.end annotation


# instance fields
.field public cacheDirs:[Ljava/lang/String;

.field public fcVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/font/FontConfigManager$FontConfigInfo;->cacheDirs:[Ljava/lang/String;

    return-void
.end method
