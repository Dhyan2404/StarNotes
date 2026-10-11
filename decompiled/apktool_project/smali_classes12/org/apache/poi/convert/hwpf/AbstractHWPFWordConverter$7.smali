.class Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$7;
.super Lorg/apache/poi/hwpf/usermodel/Range;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;->processField(Lorg/apache/poi/hwpf/HWPFDocument;Lorg/apache/poi/hwpf/usermodel/Range;ILorg/apache/poi/hwpf/usermodel/Field;Lorg/jsoup/nodes/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;IILorg/apache/poi/hwpf/usermodel/Range;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter$7;->this$0:Lorg/apache/poi/convert/hwpf/AbstractHWPFWordConverter;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/hwpf/usermodel/Range;-><init>(IILorg/apache/poi/hwpf/usermodel/Range;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Local hyperlink text"

    return-object p0
.end method
