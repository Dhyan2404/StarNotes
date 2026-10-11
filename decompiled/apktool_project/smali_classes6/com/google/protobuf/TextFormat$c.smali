.class public final Lcom/google/protobuf/TextFormat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/util/regex/Matcher;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(\\s|(#.*$))++"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->k:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->l:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->m:Ljava/util/regex/Pattern;

    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->n:Ljava/util/regex/Pattern;

    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat$c;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    .line 4
    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    .line 5
    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    .line 6
    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->g:I

    .line 7
    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->h:I

    .line 8
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$c;->i:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$c;->j:Z

    .line 10
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$c;->a:Ljava/lang/CharSequence;

    .line 11
    sget-object v0, Lcom/google/protobuf/TextFormat$c;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->B()V

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$c;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/TextFormat$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "description"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/google/protobuf/TextFormat$c;->g:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->h:I

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public final B()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$c;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object p0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "token"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public D()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->e()Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public E()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->g()D
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public F()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->h()F
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public G()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->i()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public H()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->k()J
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public I()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->n()J
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "True"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "False"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \"true\" or \"false\". Found \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    const/4 p0, 0x1

    return p0
.end method

.method public e()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation build Lcom/sunia/HTREnginev2/bnd;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->f(Ljava/util/List;)V

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->f(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    const/16 v0, 0x22

    if-eq v1, v0, :cond_2

    const/16 v0, 0x27

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Expected string."

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p1, "String missing ending quote."

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat$c;->m:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->o(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public h()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat$c;->n:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    if-eqz v0, :cond_0

    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    return p0

    :cond_1
    sget-object v0, Lcom/google/protobuf/TextFormat$c;->o:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->o(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public i()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected identifier. Found \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V

    return-object v0
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->i(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->v(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public k()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->v(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public l()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->e()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->v(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public n()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->m(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->y()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/TextFormat$c;->v(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    throw p0
.end method

.method public final o(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    return-object p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/TextFormat$c;->i:Z

    return p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/TextFormat$c;->j:Z

    return p0
.end method

.method public s()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    return p0
.end method

.method public t()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->h:I

    return p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->g:I

    return p0
.end method

.method public final v(Ljava/lang/NumberFormatException;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$c;->z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object p0

    return-object p0
.end method

.method public w(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x30

    if-gt v0, p0, :cond_1

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public y()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->g:I

    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->h:I

    :goto_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    :goto_1
    iget v0, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/google/protobuf/TextFormat$c;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/protobuf/TextFormat$c;->b:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/google/protobuf/TextFormat$c;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$c;->B()V

    :goto_3
    return-void
.end method

.method public z(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "description"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$ParseException;

    iget v1, p0, Lcom/google/protobuf/TextFormat$c;->e:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/google/protobuf/TextFormat$c;->f:I

    add-int/lit8 p0, p0, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    return-object v0
.end method
