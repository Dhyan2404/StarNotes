.class public Ljava/awt/font/TextLayout$CaretPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/font/TextLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaretPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrongCaret(Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextLayout;)Ljava/awt/font/TextHitInfo;
    .locals 0

    invoke-static {p3, p1, p2}, Ljava/awt/font/TextLayout;->access$000(Ljava/awt/font/TextLayout;Ljava/awt/font/TextHitInfo;Ljava/awt/font/TextHitInfo;)Ljava/awt/font/TextHitInfo;

    move-result-object p0

    return-object p0
.end method
