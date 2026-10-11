.class Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeadFieldBoundaries"
.end annotation


# instance fields
.field final beginMark:I

.field final endMark:I

.field final separatorMark:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->beginMark:I

    iput p2, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->separatorMark:I

    iput p3, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$DeadFieldBoundaries;->endMark:I

    return-void
.end method
