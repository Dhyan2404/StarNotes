.class Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockProperties"
.end annotation


# instance fields
.field final pFontName:Ljava/lang/String;

.field final pFontSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;->pFontName:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlConverter$BlockProperties;->pFontSize:I

    return-void
.end method
