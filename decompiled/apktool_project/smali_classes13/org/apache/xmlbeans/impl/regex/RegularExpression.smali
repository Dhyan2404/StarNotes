.class public Lorg/apache/xmlbeans/impl/regex/RegularExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;,
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;,
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharacterIteratorTarget;,
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$CharArrayTarget;,
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$StringTarget;,
        Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;
    }
.end annotation


# static fields
.field static final CARRIAGE_RETURN:I = 0xd

.field static final DEBUG:Z = false

.field static final EXTENDED_COMMENT:I = 0x10

.field static final IGNORE_CASE:I = 0x2

.field static final LINE_FEED:I = 0xa

.field static final LINE_SEPARATOR:I = 0x2028

.field static final MULTIPLE_LINES:I = 0x8

.field static final PARAGRAPH_SEPARATOR:I = 0x2029

.field static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field static final SINGLE_LINE:I = 0x4

.field static final SPECIAL_COMMA:I = 0x400

.field static final UNICODE_WORD_BOUNDARY:I = 0x40

.field static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field static final XMLSCHEMA_MODE:I = 0x200

.field private static final serialVersionUID:J = 0x56a1d011fd4e4bc1L


# instance fields
.field transient context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

.field transient firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

.field transient fixedString:Ljava/lang/String;

.field transient fixedStringOnly:Z

.field transient fixedStringOptions:I

.field transient fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

.field hasBackReferences:Z

.field transient minlength:I

.field nofparen:I

.field transient numberOfClosures:I

.field transient operations:Lorg/apache/xmlbeans/impl/regex/Op;

.field options:I

.field regex:Ljava/lang/String;

.field tokentree:Lorg/apache/xmlbeans/impl/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 5
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 6
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 7
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    .line 9
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 14
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 15
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 16
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    .line 18
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/Token;IZI)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 22
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 23
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 24
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    .line 27
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 29
    iput p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    .line 30
    iput p5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    .line 31
    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    return-void
.end method

.method private compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;
    .locals 9

    .line 6
    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown token type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_0
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;

    .line 9
    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->refNumber:I

    .line 10
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->condition:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    .line 11
    :goto_0
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->yes:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v2

    .line 12
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/Token$ConditionToken;->no:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v3

    .line 13
    :goto_1
    invoke-static {p2, v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/Op;->createCondition(Lorg/apache/xmlbeans/impl/regex/Op;ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    move-result-object p2

    goto/16 :goto_c

    .line 14
    :pswitch_1
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;

    .line 15
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->getOptions()I

    move-result p3

    .line 16
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token$ModifierToken;->getOptionsMask()I

    move-result p1

    .line 17
    invoke-static {p2, p0, p3, p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createModifier(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;II)Lorg/apache/xmlbeans/impl/regex/Op$ModifierOp;

    move-result-object p2

    goto/16 :goto_c

    .line 18
    :pswitch_2
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createIndependent(Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_c

    .line 19
    :pswitch_3
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    const/16 p1, 0x17

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_c

    .line 20
    :pswitch_4
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    const/16 p1, 0x16

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_c

    .line 21
    :pswitch_5
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    const/16 p1, 0x15

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_c

    .line 22
    :pswitch_6
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, v3, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    const/16 p1, 0x14

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createLook(ILorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p2

    goto/16 :goto_c

    .line 23
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getReferenceNumber()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createBackReference(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p0

    .line 24
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    .line 25
    :pswitch_8
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Op;->createDot()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    .line 26
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    .line 27
    :pswitch_9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/regex/Op$StringOp;

    move-result-object p0

    .line 28
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    .line 29
    :pswitch_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createAnchor(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p0

    .line 30
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    .line 31
    :pswitch_b
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result v0

    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    goto/16 :goto_c

    :cond_2
    if-eqz p3, :cond_3

    .line 33
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    .line 34
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    .line 35
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result p1

    neg-int p1, p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_c

    .line 36
    :cond_3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    .line 37
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p0

    .line 38
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getParenNumber()I

    move-result p1

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createCapture(ILorg/apache/xmlbeans/impl/regex/Op;)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p2

    goto/16 :goto_c

    .line 39
    :pswitch_c
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createRange(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Op$RangeOp;

    move-result-object p0

    .line 40
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    .line 41
    :pswitch_d
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getMin()I

    move-result v3

    .line 43
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getMax()I

    move-result v4

    if-ltz v3, :cond_4

    if-ne v3, v4, :cond_4

    :goto_2
    if-ge v2, v3, :cond_c

    .line 44
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-lez v3, :cond_5

    if-lez v4, :cond_5

    sub-int/2addr v4, v3

    :cond_5
    const/16 v5, 0x9

    if-lez v4, :cond_8

    move-object v7, p2

    move v6, v2

    :goto_3
    if-ge v6, v4, :cond_7

    .line 45
    iget v8, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne v8, v5, :cond_6

    move v8, v1

    goto :goto_4

    :cond_6
    move v8, v2

    :goto_4
    invoke-static {v8}, Lorg/apache/xmlbeans/impl/regex/Op;->createQuestion(Z)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object v8

    .line 46
    iput-object p2, v8, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 47
    invoke-direct {p0, v0, v7, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    goto :goto_3

    :cond_7
    move-object p2, v7

    goto :goto_6

    .line 48
    :cond_8
    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne p1, v5, :cond_9

    .line 49
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Op;->createNonGreedyClosure()Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p1

    goto :goto_5

    .line 50
    :cond_9
    iget p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/regex/Op;->createClosure(I)Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;

    move-result-object p1

    .line 51
    :goto_5
    iput-object p2, p1, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 52
    invoke-direct {p0, v0, p1, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/regex/Op$ChildOp;->setChild(Lorg/apache/xmlbeans/impl/regex/Op;)V

    move-object p2, p1

    :goto_6
    if-lez v3, :cond_c

    :goto_7
    if-ge v2, v3, :cond_c

    .line 53
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 54
    :pswitch_e
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->createUnion(I)Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;

    move-result-object v0

    .line 55
    :goto_8
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 56
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/regex/Op$UnionOp;->addElement(Lorg/apache/xmlbeans/impl/regex/Op;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_a
    move-object p2, v0

    goto :goto_c

    :pswitch_f
    if-nez p3, :cond_b

    .line 57
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_9
    if-ltz p3, :cond_c

    .line 58
    invoke-virtual {p1, p3}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object v0

    invoke-direct {p0, v0, p2, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    goto :goto_9

    .line 59
    :cond_b
    :goto_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->size()I

    move-result p3

    if-ge v2, p3, :cond_c

    .line 60
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getChild(I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p3

    invoke-direct {p0, p3, p2, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 61
    :pswitch_10
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/Token;->getChar()I

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/Op;->createChar(I)Lorg/apache/xmlbeans/impl/regex/Op$CharOp;

    move-result-object p0

    .line 62
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    :goto_b
    move-object p2, p0

    :cond_c
    :goto_c
    :pswitch_11
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized compile(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;Lorg/apache/xmlbeans/impl/regex/Op;Z)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static final getPreviousWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static final getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 0

    if-lt p3, p1, :cond_1

    if-lt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType0(CI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private static getWordType0(CI)I
    .locals 4

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "IsWord"

    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getRange(Ljava/lang/String;Z)Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isWordChar(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p1

    const/16 v0, 0xf

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/16 p0, 0x10

    if-eq p1, p0, :cond_4

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :cond_4
    :pswitch_1
    return v3

    :cond_5
    packed-switch p0, :pswitch_data_1

    return v3

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static isEOLChar(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWordChar(I)Z
    .locals 3

    const/16 v0, 0x5f

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x30

    const/4 v2, 0x0

    if-ge p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    return v2

    :cond_2
    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x41

    if-ge p0, v0, :cond_4

    return v2

    :cond_4
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x61

    if-ge p0, v0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method private match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->target:Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    new-instance v10, Lorg/apache/xmlbeans/impl/regex/IntStack;

    invoke-direct {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;-><init>()V

    const/4 v0, 0x2

    move/from16 v1, p5

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move v5, v1

    move/from16 v16, v12

    :goto_0
    const/16 v4, 0xf

    const/16 v17, -0x1

    const/4 v3, 0x1

    if-eqz v13, :cond_29

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-gt v14, v0, :cond_29

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ge v14, v1, :cond_0

    goto/16 :goto_15

    :cond_0
    iget v1, v13, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-eqz v1, :cond_21

    if-eq v1, v3, :cond_1e

    if-eq v1, v4, :cond_1b

    const/16 v2, 0x10

    const-string v3, "Internal Error: Reference number must be more than zero: "

    if-eq v1, v2, :cond_14

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v0, v13

    check-cast v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    iget v1, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    if-lez v1, :cond_4

    iget v2, v6, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v1, v2, :cond_3

    iget-object v2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_5

    :cond_1
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_2

    move-object v0, v1

    goto/16 :goto_5

    :cond_2
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_5

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->condition:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData2()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v5}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    move v5, v0

    :goto_1
    move-object v13, v1

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v0

    goto :goto_5

    :pswitch_3
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v15}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    iget v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v0, v17

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    move v15, v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v12}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v13, v12}, Lorg/apache/xmlbeans/impl/regex/Op;->elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v0

    goto :goto_5

    :pswitch_5
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_5

    :pswitch_6
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    aget-object v1, v1, v0

    invoke-virtual {v1, v14}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    move v12, v4

    move/from16 v0, v17

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->closureContexts:[Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;

    aget-object v0, v1, v0

    invoke-virtual {v0, v14}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ClosureContext;->addOffset(I)V

    :pswitch_7
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v0

    :goto_5
    move-object v13, v0

    :goto_6
    move v12, v4

    move/from16 v0, v17

    :goto_7
    const/16 v20, 0x1

    goto/16 :goto_19

    :pswitch_8
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v15, :cond_a

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move v2, v14

    const/16 v20, 0x1

    move v12, v4

    move-object/from16 v4, v18

    move/from16 p2, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    add-int v14, v14, v19

    goto :goto_8

    :cond_a
    move v12, v4

    move/from16 p2, v5

    const/16 v20, 0x1

    sub-int v21, v14, v19

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move/from16 v2, v21

    move-object/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v14, v21

    :goto_8
    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_b

    :pswitch_9
    move v12, v4

    move/from16 p2, v5

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v13

    move-object/from16 v3, p1

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchAnchor(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;II)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_9
    move/from16 v5, p2

    :goto_a
    move/from16 v0, v17

    goto/16 :goto_18

    :cond_d
    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    :goto_b
    move/from16 v5, p2

    move-object v13, v0

    :cond_e
    :goto_c
    move/from16 v0, v17

    goto/16 :goto_19

    :pswitch_a
    move v12, v4

    move/from16 p2, v5

    const/16 v20, 0x1

    if-lez v15, :cond_f

    move v1, v14

    goto :goto_d

    :cond_f
    add-int/lit8 v1, v14, -0x1

    :goto_d
    if-ge v1, v0, :cond_c

    if-gez v1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v8, v14}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int v2, v1, v15

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v2, v3, :cond_11

    if-ltz v2, :cond_11

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    move v1, v2

    :cond_11
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_9

    :cond_12
    if-lez v15, :cond_13

    add-int/lit8 v1, v1, 0x1

    :cond_13
    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move/from16 v5, p2

    move-object v13, v0

    move v14, v1

    goto :goto_c

    :cond_14
    move v12, v4

    move/from16 p2, v5

    const/16 v20, 0x1

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    if-lez v0, :cond_1a

    iget v1, v6, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    if-ge v0, v1, :cond_1a

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    if-ltz v1, :cond_c

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    if-gez v1, :cond_15

    goto :goto_9

    :cond_15
    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v4

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v0

    sub-int v18, v0, v4

    if-lez v15, :cond_17

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move v2, v14

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_9

    :cond_16
    add-int v14, v14, v18

    goto :goto_e

    :cond_17
    sub-int v19, v14, v18

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    move-object v0, v8

    move v1, v11

    move/from16 v2, v19

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_9

    :cond_18
    move/from16 v14, v19

    :goto_e
    iget-object v13, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    :cond_19
    move/from16 v5, p2

    goto/16 :goto_c

    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move/from16 v20, v3

    move v12, v4

    move/from16 p2, v5

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v1, :cond_1d

    if-lez v0, :cond_1c

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getBeginning(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0, v14}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    goto :goto_f

    :cond_1c
    neg-int v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->getEnd(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    iget-object v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {v1, v0, v14}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    :goto_f
    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    :cond_1d
    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    :cond_1e
    move/from16 v20, v3

    move v12, v4

    move/from16 p2, v5

    if-lez v15, :cond_1f

    move v1, v14

    goto :goto_10

    :cond_1f
    add-int/lit8 v1, v14, -0x1

    :goto_10
    if-ge v1, v0, :cond_c

    if-ltz v1, :cond_c

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-direct {v6, v0, v1, v11}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchChar(IIZ)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_9

    :cond_20
    add-int/2addr v14, v15

    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto/16 :goto_b

    :cond_21
    move/from16 v20, v3

    move v12, v4

    move/from16 p2, v5

    if-lez v15, :cond_22

    move v1, v14

    goto :goto_11

    :cond_22
    add-int/lit8 v1, v14, -0x1

    :goto_11
    if-ge v1, v0, :cond_28

    if-gez v1, :cond_23

    goto :goto_13

    :cond_23
    const/4 v0, 0x4

    move/from16 v2, p2

    invoke-static {v2, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_26

    add-int v0, v1, v15

    if-ltz v0, :cond_26

    iget v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v0, v3, :cond_26

    move v1, v0

    goto :goto_12

    :cond_24
    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int v3, v1, v15

    if-ltz v3, :cond_25

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v3, v4, :cond_25

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v0

    move v1, v3

    :cond_25
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_14

    :cond_26
    :goto_12
    if-lez v15, :cond_27

    add-int/lit8 v1, v1, 0x1

    :cond_27
    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move-object v13, v0

    move v14, v1

    move v5, v2

    goto/16 :goto_c

    :cond_28
    :goto_13
    move/from16 v2, p2

    :goto_14
    move v5, v2

    goto/16 :goto_a

    :cond_29
    :goto_15
    move/from16 v20, v3

    move v12, v4

    move v2, v5

    if-nez v13, :cond_2b

    const/16 v0, 0x200

    invoke-static {v2, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq v14, v0, :cond_2a

    goto :goto_16

    :cond_2a
    move v0, v14

    goto :goto_17

    :cond_2b
    :goto_16
    move/from16 v0, v17

    :goto_17
    move v5, v2

    :goto_18
    move/from16 v16, v20

    :cond_2c
    :goto_19
    if-eqz v16, :cond_32

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    return v0

    :cond_2d
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v14

    iget v1, v13, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-eq v1, v12, :cond_30

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto :goto_19

    :pswitch_b
    check-cast v13, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;

    if-ltz v0, :cond_2e

    iget-object v1, v13, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->yes:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_1c

    :cond_2e
    iget-object v1, v13, Lorg/apache/xmlbeans/impl/regex/Op$ConditionOp;->no:Lorg/apache/xmlbeans/impl/regex/Op;

    if-eqz v1, :cond_2f

    goto :goto_1c

    :cond_2f
    iget-object v1, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_1c

    :pswitch_c
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v5

    :pswitch_d
    if-ltz v0, :cond_2c

    iget-object v13, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    move v14, v0

    :goto_1a
    const/16 v16, 0x0

    goto :goto_19

    :pswitch_e
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v15

    if-gez v0, :cond_e

    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    :goto_1b
    move-object v13, v0

    const/16 v16, 0x0

    goto/16 :goto_c

    :pswitch_f
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v15

    if-ltz v0, :cond_e

    iget-object v0, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_1b

    :pswitch_10
    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v1

    if-gez v0, :cond_2c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    invoke-virtual {v9, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v10, v14}, Lorg/apache/xmlbeans/impl/regex/IntStack;->push(I)V

    invoke-virtual {v13, v1}, Lorg/apache/xmlbeans/impl/regex/Op;->elementAt(I)Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v1

    :goto_1c
    move-object v13, v1

    goto :goto_1a

    :pswitch_11
    if-gez v0, :cond_2c

    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v13

    goto :goto_1a

    :pswitch_12
    if-gez v0, :cond_2c

    iget-object v13, v13, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    goto :goto_1a

    :cond_30
    invoke-virtual {v13}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/regex/IntStack;->pop()I

    move-result v2

    iget-object v3, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz v3, :cond_2c

    if-gez v0, :cond_2c

    if-lez v1, :cond_31

    invoke-virtual {v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    goto/16 :goto_19

    :cond_31
    neg-int v1, v1

    invoke-virtual {v3, v1, v2}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    goto/16 :goto_19

    :cond_32
    const/4 v12, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private matchChar(IIZ)Z
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static matchIgnoreCase(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const v2, 0xffff

    if-gt p0, v2, :cond_4

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private setPattern(Ljava/lang/String;ILjava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    .line 4
    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p1, 0x200

    .line 5
    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;

    invoke-direct {p1, p3}, Lorg/apache/xmlbeans/impl/regex/ParserForXMLSchema;-><init>(Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;

    invoke-direct {p1, p3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    .line 6
    :goto_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iget p3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parse(Ljava/lang/String;I)Lorg/apache/xmlbeans/impl/regex/Token;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    .line 7
    iget p2, p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;->parennumber:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    .line 8
    iget-boolean p1, p1, Lorg/apache/xmlbeans/impl/regex/RegexParser;->hasBackReferences:Z

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    .line 10
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;

    .line 3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public equals(Ljava/lang/String;I)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNumberOfGroups()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    return p0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public matchAnchor(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;Lorg/apache/xmlbeans/impl/regex/Op;Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;II)Z
    .locals 6

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result p0

    const/16 p2, 0x24

    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, p2, :cond_14

    const/16 p2, 0x3c

    const/4 v5, 0x2

    if-eq p0, p2, :cond_11

    const/16 p2, 0x3e

    if-eq p0, p2, :cond_e

    const/16 p2, 0x5a

    if-eq p0, p2, :cond_b

    const/16 p2, 0x5e

    if-eq p0, p2, :cond_8

    const/16 p2, 0x62

    if-eq p0, p2, :cond_5

    const/16 p2, 0x7a

    if-eq p0, p2, :cond_4

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move p0, v3

    goto :goto_1

    :cond_1
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p0, p2, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-eqz p0, :cond_0

    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, v4

    :goto_1
    if-nez p0, :cond_19

    return v4

    :pswitch_1
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p4, p0, :cond_19

    return v4

    :pswitch_2
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p4, p0, :cond_19

    if-le p4, p0, :cond_3

    sub-int/2addr p4, v3

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_3
    return v4

    :cond_4
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p4, p0, :cond_19

    return v4

    :cond_5
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-nez p0, :cond_6

    return v4

    :cond_6
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p0, p2, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-nez p0, :cond_7

    return v4

    :cond_7
    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p3, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p1

    if-ne p0, p1, :cond_19

    return v4

    :cond_8
    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_a

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p4, p0, :cond_19

    if-le p4, p0, :cond_9

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge p4, p0, :cond_9

    sub-int/2addr p4, v3

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_9
    return v4

    :cond_a
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-eq p4, p0, :cond_19

    return v4

    :cond_b
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p4, p0, :cond_19

    add-int/lit8 p2, p4, 0x1

    if-ne p2, p0, :cond_c

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_c
    add-int/lit8 p0, p4, 0x2

    iget p3, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p0, p3, :cond_d

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_d

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    if-eq p0, v0, :cond_19

    :cond_d
    return v4

    :cond_e
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz p0, :cond_10

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    if-ne p4, p0, :cond_f

    goto :goto_2

    :cond_f
    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p0, p2, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-ne p0, v5, :cond_10

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p0, p2, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-eq p0, v3, :cond_19

    :cond_10
    :goto_2
    return v4

    :cond_11
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->length:I

    if-eqz p0, :cond_13

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p4, p0, :cond_12

    goto :goto_3

    :cond_12
    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-static {p1, p2, p0, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-ne p0, v3, :cond_13

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget p2, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, p0, p2, p4, p5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->getPreviousWordType(Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result p0

    if-eq p0, v5, :cond_19

    :cond_13
    :goto_3
    return v4

    :cond_14
    invoke-static {p5, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_16

    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p4, p0, :cond_19

    if-ge p4, p0, :cond_15

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_15
    return v4

    :cond_16
    iget p0, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-eq p4, p0, :cond_19

    add-int/lit8 p2, p4, 0x1

    if-ne p2, p0, :cond_17

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result p0

    if-nez p0, :cond_19

    :cond_17
    add-int/lit8 p0, p4, 0x2

    iget p3, p3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p0, p3, :cond_18

    invoke-virtual {p1, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_18

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result p0

    if-eq p0, v0, :cond_19

    :cond_18
    return v4

    :cond_19
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 9

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 71
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v0

    .line 73
    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v2, v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v7, v1

    .line 74
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v7, p1, p2, p3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    .line 75
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    .line 76
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 77
    invoke-virtual {p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    .line 79
    new-instance p4, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p4}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    .line 80
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 81
    :cond_4
    :goto_0
    iput-object p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    .line 82
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    .line 83
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    .line 84
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p0, p1, :cond_6

    .line 85
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p1, :cond_5

    .line 86
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p1, p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 87
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 88
    :cond_5
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_6
    return p4

    .line 89
    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    .line 90
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p1

    if-ltz p1, :cond_9

    .line 91
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    .line 92
    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 93
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 94
    :cond_8
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    .line 95
    :cond_9
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    .line 96
    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 97
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result p2

    if-gez p2, :cond_b

    .line 98
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    .line 99
    :cond_b
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    .line 100
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    .line 101
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v0

    iget v0, v0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v0, :cond_10

    .line 102
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 104
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    goto/16 :goto_9

    .line 105
    :cond_c
    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v2, p3

    :goto_1
    if-gt v0, p2, :cond_f

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 107
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, p3

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_e

    .line 108
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, p4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p0, v1

    move p1, v0

    goto :goto_9

    .line 109
    :cond_10
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v0, :cond_15

    .line 110
    iget v2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v8, v2

    :goto_4
    if-gt v8, p2, :cond_14

    .line 111
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v8, 0x1

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v3, v4, :cond_11

    .line 113
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v2

    .line 114
    :cond_11
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_5

    .line 115
    :cond_12
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_14
    :goto_6
    move p0, v1

    move p1, v8

    goto :goto_9

    .line 116
    :cond_15
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt p1, p2, :cond_17

    .line 117
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    move p0, v1

    :goto_9
    if-ltz p0, :cond_19

    .line 118
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_18

    .line 119
    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 120
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 121
    :cond_18
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    .line 122
    :cond_19
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :catchall_0
    move-exception p0

    .line 123
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 124
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches(Ljava/lang/String;Lorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 2

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/lang/String;IILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches(Ljava/text/CharacterIterator;Lorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 11

    .line 126
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 127
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 133
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v2

    .line 135
    :try_start_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v4, v3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v4, :cond_2

    new-instance v3, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v9, v3

    .line 136
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v9, p1, v0, v1, v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    .line 137
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 138
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 139
    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v0, :cond_4

    .line 141
    new-instance p2, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    .line 142
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 143
    :cond_4
    :goto_0
    iput-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    .line 144
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 v0, 0x200

    invoke-static {p2, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 145
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v6, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    .line 146
    iget p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p0, p1, :cond_6

    .line 147
    iget-object p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p1, :cond_5

    .line 148
    iget p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p1, v1, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 149
    iget-object p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 150
    :cond_5
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    :cond_6
    return v1

    .line 151
    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    .line 152
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p1

    if-ltz p1, :cond_9

    .line 153
    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    .line 154
    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 155
    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 156
    :cond_8
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    .line 157
    :cond_9
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    .line 158
    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 159
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v3, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v2, v3}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result p2

    if-gez p2, :cond_b

    .line 160
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    .line 161
    :cond_b
    iget p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v2

    .line 162
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v3, -0x1

    if-eqz v2, :cond_10

    iget v4, v2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_10

    .line 163
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v2

    iget v2, v2, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v2, :cond_10

    .line 164
    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 165
    iget p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 166
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    goto/16 :goto_9

    .line 167
    :cond_c
    iget v2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v4, v0

    :goto_1
    if-gt v2, p2, :cond_f

    .line 168
    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    .line 169
    invoke-static {v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-eqz v5, :cond_d

    move v4, v0

    goto :goto_2

    :cond_d
    if-eqz v4, :cond_e

    .line 170
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v3

    if-ltz v3, :cond_e

    goto :goto_3

    :cond_e
    move v4, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p0, v3

    move p1, v2

    goto :goto_9

    .line 171
    :cond_10
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v2, :cond_15

    .line 172
    iget v4, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v10, v4

    :goto_4
    if-gt v10, p2, :cond_14

    .line 173
    invoke-interface {p1, v10}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    .line 174
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_11

    add-int/lit8 v5, v10, 0x1

    iget v6, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v5, v6, :cond_11

    .line 175
    invoke-interface {p1, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v4

    .line 176
    :cond_11
    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_5

    .line 177
    :cond_12
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v3

    if-ltz v3, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_14
    :goto_6
    move p0, v3

    move p1, v10

    goto :goto_9

    .line 178
    :cond_15
    iget p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt p1, p2, :cond_17

    .line 179
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v7, 0x1

    iget v8, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v3, p0

    move-object v4, v9

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v3

    if-ltz v3, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    move p0, v3

    :goto_9
    if-ltz p0, :cond_19

    .line 180
    iget-object p2, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_18

    .line 181
    invoke-virtual {p2, v1, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 182
    iget-object p1, v9, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, v1, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 183
    :cond_18
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v0

    .line 184
    :cond_19
    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return v1

    :catchall_0
    move-exception p0

    .line 185
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 186
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([C)Z
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches([CII)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 9

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->prepare()V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->context:Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    iget-boolean v2, v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_2

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;-><init>()V

    :cond_2
    move-object v7, v1

    .line 12
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->numberOfClosures:I

    invoke-virtual {v7, p1, p2, p3, v1}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->reset([CIII)V

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    .line 14
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 15
    invoke-virtual {p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setSource([C)V

    goto :goto_0

    .line 16
    :cond_3
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->hasBackReferences:Z

    if-eqz p2, :cond_4

    .line 17
    new-instance p4, Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-direct {p4}, Lorg/apache/xmlbeans/impl/regex/Match;-><init>()V

    .line 18
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->nofparen:I

    invoke-virtual {p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setNumberOfGroups(I)V

    .line 19
    :cond_4
    :goto_0
    iput-object p4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    .line 20
    iget p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 p3, 0x200

    invoke-static {p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    .line 21
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    .line 22
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ne p0, p1, :cond_6

    .line 23
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p1, :cond_5

    .line 24
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    invoke-virtual {p1, p4, p2}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 25
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 26
    :cond_5
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    :cond_6
    return p4

    .line 27
    :cond_7
    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz p2, :cond_a

    .line 28
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches([CII)I

    move-result p1

    if-ltz p1, :cond_9

    .line 29
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_8

    .line 30
    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 31
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 32
    :cond_8
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    .line 33
    :cond_9
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    .line 34
    :cond_a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 35
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    iget v1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    invoke-virtual {p2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/regex/BMPattern;->matches([CII)I

    move-result p2

    if-gez p2, :cond_b

    .line 36
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    .line 37
    :cond_b
    iget p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    sub-int/2addr p2, v0

    .line 38
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    iget v2, v0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_10

    .line 39
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->getChild()Lorg/apache/xmlbeans/impl/regex/Op;

    move-result-object v0

    iget v0, v0, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    if-nez v0, :cond_10

    .line 40
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    .line 42
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result p0

    goto/16 :goto_9

    .line 43
    :cond_c
    iget v0, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v2, p3

    :goto_1
    if-gt v0, p2, :cond_f

    .line 44
    aget-char v3, p1, v0

    .line 45
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, p3

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_e

    .line 46
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_e

    goto :goto_3

    :cond_e
    move v2, p4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    :goto_3
    move p0, v1

    move p1, v0

    goto :goto_9

    .line 47
    :cond_10
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-eqz v0, :cond_15

    .line 48
    iget v2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    move v8, v2

    :goto_4
    if-gt v8, p2, :cond_14

    .line 49
    aget-char v2, p1, v8

    .line 50
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v8, 0x1

    iget v4, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->limit:I

    if-ge v3, v4, :cond_11

    .line 51
    aget-char v3, p1, v3

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/regex/REUtil;->composeFromSurrogates(II)I

    move-result v2

    .line 52
    :cond_11
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_5

    .line 53
    :cond_12
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_14
    :goto_6
    move p0, v1

    move p1, v8

    goto :goto_9

    .line 54
    :cond_15
    iget p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt p1, p2, :cond_17

    .line 55
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v5, 0x1

    iget v6, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    move-object v1, p0

    move-object v2, v7

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->match(Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;Lorg/apache/xmlbeans/impl/regex/Op;III)I

    move-result v1

    if-ltz v1, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_17
    :goto_8
    move p0, v1

    :goto_9
    if-ltz p0, :cond_19

    .line 56
    iget-object p2, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    if-eqz p2, :cond_18

    .line 57
    invoke-virtual {p2, p4, p1}, Lorg/apache/xmlbeans/impl/regex/Match;->setBeginning(II)V

    .line 58
    iget-object p1, v7, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->match:Lorg/apache/xmlbeans/impl/regex/Match;

    invoke-virtual {p1, p4, p0}, Lorg/apache/xmlbeans/impl/regex/Match;->setEnd(II)V

    .line 59
    :cond_18
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p3

    .line 60
    :cond_19
    invoke-virtual {v7, p4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression$Context;->setInUse(Z)V

    return p4

    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    .line 62
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public matches([CLorg/apache/xmlbeans/impl/regex/Match;)Z
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->matches([CIILorg/apache/xmlbeans/impl/regex/Match;)Z

    move-result p0

    return p0
.end method

.method public prepare()V
    .locals 9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->compile(Lorg/apache/xmlbeans/impl/regex/Token;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Token;->getMinLength()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->minlength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    const/16 v2, 0x200

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget v5, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v4, v1, v5}, Lorg/apache/xmlbeans/impl/regex/Token;->analyzeFirstCharacter(Lorg/apache/xmlbeans/impl/regex/RangeToken;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->firstChar:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    const/4 v4, 0x2

    const/16 v5, 0x100

    if-eqz v1, :cond_4

    iget v6, v1, Lorg/apache/xmlbeans/impl/regex/Op;->type:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-ne v6, v3, :cond_4

    :cond_1
    iget-object v8, v1, Lorg/apache/xmlbeans/impl/regex/Op;->next:Lorg/apache/xmlbeans/impl/regex/Op;

    if-nez v8, :cond_4

    iput-boolean v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOnly:Z

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v0, v3, [C

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->operations:Lorg/apache/xmlbeans/impl/regex/Op;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/Op;->getData()I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v0

    invoke-direct {v1, v2, v5, v0}, Lorg/apache/xmlbeans/impl/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v5}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/xmlbeans/impl/regex/Token;->findFixedString(Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;I)V

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->token:Lorg/apache/xmlbeans/impl/regex/Token;

    if-nez v2, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/regex/Token;->getString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v1, v1, Lorg/apache/xmlbeans/impl/regex/Token$FixedStringContainer;->options:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_6

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v1, Lorg/apache/xmlbeans/impl/regex/BMPattern;

    iget v2, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v2, v4}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->isSet(II)Z

    move-result v2

    invoke-direct {v1, v0, v5, v2}, Lorg/apache/xmlbeans/impl/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->fixedStringTable:Lorg/apache/xmlbeans/impl/regex/BMPattern;

    :cond_7
    :goto_2
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 12
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/regex/ParseException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->tokentree:Lorg/apache/xmlbeans/impl/regex/Token;

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/RegularExpression;->options:I

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
