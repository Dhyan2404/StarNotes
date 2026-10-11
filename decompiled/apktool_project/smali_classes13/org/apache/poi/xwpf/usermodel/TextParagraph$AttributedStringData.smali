.class public Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xwpf/usermodel/TextParagraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributedStringData"
.end annotation


# instance fields
.field attribute:Ljava/text/AttributedCharacterIterator$Attribute;

.field beginIndex:I

.field endIndex:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->attribute:Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->value:Ljava/lang/Object;

    iput p3, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->beginIndex:I

    iput p4, p0, Lorg/apache/poi/xwpf/usermodel/TextParagraph$AttributedStringData;->endIndex:I

    return-void
.end method
