.class Ljava/awt/Font$FontAccessImpl;
.super Lsun/font/FontAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontAccessImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsun/font/FontAccess;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/awt/Font$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/awt/Font$FontAccessImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;
    .locals 0

    invoke-static {p1}, Ljava/awt/Font;->access$000(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public isCreatedFont(Ljava/awt/Font;)Z
    .locals 0

    invoke-static {p1}, Ljava/awt/Font;->access$200(Ljava/awt/Font;)Z

    move-result p0

    return p0
.end method

.method public setCreatedFont(Ljava/awt/Font;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Ljava/awt/Font;->access$202(Ljava/awt/Font;Z)Z

    return-void
.end method

.method public setFont2D(Ljava/awt/Font;Lsun/font/Font2DHandle;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/awt/Font;->access$102(Ljava/awt/Font;Lsun/font/Font2DHandle;)Lsun/font/Font2DHandle;

    return-void
.end method
