.class public Lnet/sf/saxon/ma/json/JsonReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# static fields
.field public static final p:Ljava/lang/String; = "FOJS0006"

.field public static final synthetic q:Z


# instance fields
.field public e:Lnet/sf/saxon/expr/XPathContext;

.field public f:Lnet/sf/saxon/event/PipelineConfiguration;

.field public g:Lnet/sf/saxon/str/UniStringConsumer;

.field public final h:Ljava/lang/StringBuilder;

.field public final i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NodeName;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Lnet/sf/saxon/om/Function;

.field public o:Ljava/util/function/IntPredicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/str/UniStringConsumer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    iput-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->l:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->m:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->n:Lnet/sf/saxon/om/Function;

    new-instance v0, Lcom/sunia/HTREnginev2/uri;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uri;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->o:Ljava/util/function/IntPredicate;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/json/JsonReceiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object p3, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    iput-object p2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->e:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method

.method public static synthetic a(I)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/ma/json/JsonReceiver;->f(I)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/ma/json/JsonReceiver;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    if-nez v3, :cond_0

    const-string v5, "\\\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v5, 0x20

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_1

    const/16 v5, 0xa0

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_2

    const-string v5, "\\/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    const-string v5, "\\b"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    const-string v5, "\\f"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    const-string v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v5, 0xd

    if-ne v4, v5, :cond_7

    const-string v5, "\\r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    const-string v5, "\\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/ma/json/JsonReceiver;->d(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_9

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x4

    if-ge p0, v1, :cond_0

    const/4 p0, 0x0

    const-string v1, "0"

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static escape(Ljava/lang/String;ZLjava/util/function/IntPredicate;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    invoke-interface {p2, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\\u"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/sf/saxon/ma/json/JsonReceiver;->d(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_0
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "/"

    goto :goto_1

    :cond_3
    const-string v2, "\\/"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "\""

    goto :goto_2

    :cond_5
    const-string v2, "\\\""

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic f(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_0

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

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_c

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-string v5, "FOJS0007"

    if-eq v2, v4, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_a

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_9

    if-eq v2, v0, :cond_8

    const/16 v4, 0x62

    if-eq v2, v4, :cond_7

    const/16 v4, 0x66

    if-eq v2, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_5

    const/16 v4, 0x72

    if-eq v2, v4, :cond_4

    const/16 v4, 0x74

    if-eq v2, v4, :cond_3

    const/16 v4, 0x75

    if-eq v2, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown escape sequence \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v3, 0x5

    :try_start_0
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex escape sequence in string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_b
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' ends in backslash "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "null"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "string"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "number"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "boolean"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xml-to-json: A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " element cannot appear as a child of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FOJS0006"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->empty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeName;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string p3, "map"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "array"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "xml-to-json: Element "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must have no text content"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FOJS0006"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/str/UniStringConsumer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    :cond_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final e(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v1, "\n"

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    sget-object v2, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public endElement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    const-string v4, "boolean"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "FOJS0006"

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBoolean;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->effectiveBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "xml-to-json: Value of <boolean> element is not a valid xs:boolean"

    invoke-direct {p0, v0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v4, "number"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->n:Lnet/sf/saxon/om/Function;

    if-nez v0, :cond_3

    :try_start_1
    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v0

    invoke-virtual {v0, v3}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    new-instance v4, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v4, v2, v3}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-virtual {v4}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto/16 :goto_2

    :cond_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xml-to-json: Infinity and NaN are not allowed"

    invoke-direct {v0, v1, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml-to-json: Invalid number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->e:Lnet/sf/saxon/expr/XPathContext;

    const/4 v4, 0x1

    new-array v4, v4, [Lnet/sf/saxon/om/Sequence;

    new-instance v5, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v5, v3}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    aput-object v5, v4, v6

    invoke-static {v0, v2, v4}, Lnet/sf/saxon/functions/SystemFunction;->dynamicCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    check-cast v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/StringValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v2, v0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_2

    :cond_4
    const-string v4, "string"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v3, "\""

    invoke-static {v3}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v2}, Lnet/sf/saxon/ma/json/JsonReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    iget-object v4, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->o:Ljava/util/function/IntPredicate;

    invoke-static {v2, v6, v4}, Lnet/sf/saxon/ma/json/JsonReceiver;->escape(Ljava/lang/String;ZLjava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v3}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_2
    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v6, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->l:Z

    const-string v0, "array"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v0, :cond_7

    const-string v0, " ]"

    goto :goto_3

    :cond_7
    const-string v0, "]"

    :goto_3
    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_5

    :cond_8
    const-string v0, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-boolean v0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v0, :cond_9

    const-string v0, " }"

    goto :goto_4

    :cond_9
    const-string v0, "}"

    :goto_4
    iget-object v1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :cond_a
    :goto_5
    iput-boolean v6, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    return-void

    :cond_b
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml-to-json: Element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have no text content"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public getNumberFormatter()Lnet/sf/saxon/om/Function;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->n:Lnet/sf/saxon/om/Function;

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->f:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isIndenting()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    return p0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-interface {p0}, Lnet/sf/saxon/str/UniStringConsumer;->open()V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public setIndenting(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    return-void
.end method

.method public setNumberFormatter(Lnet/sf/saxon/om/Function;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->n:Lnet/sf/saxon/om/Function;

    return-void
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/ma/json/JsonReceiver;->f:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeName;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "map"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    iget-object v8, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "http://www.w3.org/2005/xpath-functions"

    invoke-interface {v1, v8}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "FOJS0006"

    if-eqz v9, :cond_1f

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v11, v3

    move-object v12, v11

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v14, "string"

    const/16 v16, -0x1

    if-eqz v13, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v13}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v15

    const-string v7, ""

    invoke-interface {v15, v7}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v7

    const-string v6, "xml-to-json: Disallowed attribute in input: "

    if-eqz v7, :cond_b

    invoke-interface {v15}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v1, "escaped-key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    const/16 v16, 0x2

    goto :goto_4

    :sswitch_1
    const-string v1, "key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v16, 0x1

    goto :goto_4

    :sswitch_2
    const-string v1, "escaped"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    packed-switch v16, :pswitch_data_0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-eqz v5, :cond_6

    invoke-virtual {v13}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_6
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xml-to-json: The escaped-key attribute is allowed only on elements within a map"

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_1
    if-eqz v5, :cond_7

    invoke-virtual {v13}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xml-to-json: The key attribute is allowed only on elements within a map"

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_9

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_a

    invoke-virtual {v13}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_a
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xml-to-json: The escaped attribute is allowed only on the <string> element"

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v15, v8}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_7
    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_c
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v6, ","

    invoke-static {v6}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-interface {v1, v6}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    iget-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/json/JsonReceiver;->e(I)V

    :cond_e
    if-eqz v5, :cond_15

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v3, :cond_14

    if-eqz v11, :cond_f

    :try_start_0
    sget-object v1, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBoolean;

    invoke-static {v11}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->effectiveBooleanValue()Z

    move-result v1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml-to-json: Value of escaped-key attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is not a valid xs:boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_10

    invoke-static {v3}, Lnet/sf/saxon/ma/json/JsonReceiver;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_10
    iget-object v5, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->o:Ljava/util/function/IntPredicate;

    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Lnet/sf/saxon/ma/json/JsonReceiver;->escape(Ljava/lang/String;ZLjava/util/function/IntPredicate;)Ljava/lang/String;

    move-result-object v3

    :goto_9
    if-eqz v1, :cond_11

    invoke-static {v3}, Lnet/sf/saxon/ma/json/JsonReceiver;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_11
    move-object v1, v3

    :goto_a
    iget-object v5, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->m:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v1, :cond_12

    const-string v1, " : "

    goto :goto_b

    :cond_12
    const-string v1, ":"

    :goto_b
    iget-object v5, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v6, "\""

    invoke-static {v6}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v7

    invoke-interface {v5, v7}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object v5

    invoke-static {v3}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-interface {v5, v3}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object v3

    invoke-static {v6}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object v3

    invoke-static {v1}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-interface {v3, v1}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_c

    :cond_13
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml-to-json: duplicate key value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xml-to-json: Child elements of <map> must have a key attribute"

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_c
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v5, "null"

    sparse-switch v3, :sswitch_data_1

    :goto_d
    move/from16 v15, v16

    goto :goto_e

    :sswitch_3
    const-string v3, "array"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    const/4 v15, 0x5

    goto :goto_e

    :sswitch_4
    const-string v3, "boolean"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_d

    :cond_17
    const/4 v15, 0x4

    goto :goto_e

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_d

    :cond_18
    const/4 v15, 0x3

    goto :goto_e

    :sswitch_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_d

    :cond_19
    const/4 v15, 0x2

    goto :goto_e

    :sswitch_7
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v15, 0x1

    goto :goto_e

    :sswitch_8
    const-string v3, "number"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v15, 0x0

    :goto_e
    packed-switch v15, :pswitch_data_1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xml-to-json: unknown element <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/json/JsonReceiver;->e(I)V

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v2, "[ "

    invoke-static {v2}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_f

    :cond_1c
    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v2, "["

    invoke-static {v2}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :goto_f
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    :goto_10
    const/4 v3, 0x0

    goto/16 :goto_13

    :pswitch_4
    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/ma/json/JsonReceiver;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    invoke-static {v5}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    move v3, v1

    goto/16 :goto_13

    :pswitch_5
    iget-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->k:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/json/JsonReceiver;->e(I)V

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v2, "{ "

    invoke-static {v2}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_11

    :cond_1d
    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->g:Lnet/sf/saxon/str/UniStringConsumer;

    const-string v2, "{"

    invoke-static {v2}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :goto_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    iget-object v1, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->m:Ljava/util/Stack;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_6
    if-eqz v12, :cond_1e

    :try_start_1
    sget-object v3, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBoolean;

    invoke-static {v12}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->effectiveBooleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->l:Z
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :catch_1
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xml-to-json: value of escaped attribute ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->l:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") is not a valid xs:boolean"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1e
    :goto_12
    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/ma/json/JsonReceiver;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    goto :goto_13

    :pswitch_7
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/ma/json/JsonReceiver;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->j:Z

    :goto_13
    iget-object v0, v0, Lnet/sf/saxon/ma/json/JsonReceiver;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_1f
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml-to-json: element found in wrong namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x574c6ffd -> :sswitch_2
        0x19e5f -> :sswitch_1
        0x4abe995 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        -0x352a9fef -> :sswitch_7
        0x1a55c -> :sswitch_6
        0x33c587 -> :sswitch_5
        0x3db6c28 -> :sswitch_4
        0x58c7259 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
