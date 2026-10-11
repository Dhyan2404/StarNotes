.class public Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberingState"
.end annotation


# instance fields
.field private final levels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->levels:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->levels:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HWPFWordToHtmlUtils$NumberingState;->levels:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
