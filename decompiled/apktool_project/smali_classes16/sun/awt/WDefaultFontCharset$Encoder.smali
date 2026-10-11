.class Lsun/awt/WDefaultFontCharset$Encoder;
.super Lsun/awt/AWTCharset$Encoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/WDefaultFontCharset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Encoder"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/awt/WDefaultFontCharset;


# direct methods
.method private constructor <init>(Lsun/awt/WDefaultFontCharset;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/awt/WDefaultFontCharset$Encoder;->this$0:Lsun/awt/WDefaultFontCharset;

    invoke-direct {p0, p1}, Lsun/awt/AWTCharset$Encoder;-><init>(Lsun/awt/AWTCharset;)V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/awt/WDefaultFontCharset;Lsun/awt/WDefaultFontCharset$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsun/awt/WDefaultFontCharset$Encoder;-><init>(Lsun/awt/WDefaultFontCharset;)V

    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 0

    iget-object p0, p0, Lsun/awt/WDefaultFontCharset$Encoder;->this$0:Lsun/awt/WDefaultFontCharset;

    invoke-static {p0, p1}, Lsun/awt/WDefaultFontCharset;->access$100(Lsun/awt/WDefaultFontCharset;C)Z

    move-result p0

    return p0
.end method
