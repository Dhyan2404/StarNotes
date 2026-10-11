.class Lsun/font/FileFont$CreatedFontFileDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/FileFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreatedFontFileDisposerRecord"
.end annotation


# instance fields
.field count:I

.field fontFile:Ljava/io/File;

.field tracker:Lsun/font/CreatedFontTracker;


# direct methods
.method private constructor <init>(Ljava/io/File;ILsun/font/CreatedFontTracker;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->count:I

    .line 4
    iput-object p1, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->fontFile:Ljava/io/File;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 5
    :goto_0
    iput p2, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->count:I

    .line 6
    iput-object p3, p0, Lsun/font/FileFont$CreatedFontFileDisposerRecord;->tracker:Lsun/font/CreatedFontTracker;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ILsun/font/CreatedFontTracker;Lsun/font/FileFont$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsun/font/FileFont$CreatedFontFileDisposerRecord;-><init>(Ljava/io/File;ILsun/font/CreatedFontTracker;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    new-instance v0, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;

    invoke-direct {v0, p0}, Lsun/font/FileFont$CreatedFontFileDisposerRecord$1;-><init>(Lsun/font/FileFont$CreatedFontFileDisposerRecord;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method
