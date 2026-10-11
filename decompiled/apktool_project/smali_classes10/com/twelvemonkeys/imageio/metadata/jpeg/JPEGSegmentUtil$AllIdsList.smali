.class Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllIdsList;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllIdsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllIdsList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[All ids]"

    return-object p0
.end method
