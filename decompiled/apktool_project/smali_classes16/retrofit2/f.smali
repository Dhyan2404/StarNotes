.class public final Lretrofit2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lokhttp3/Call$Factory;

.field public final b:Lretrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lokhttp3/HttpUrl;

.field public final d:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lokhttp3/Headers;

.field public final h:Lokhttp3/MediaType;

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:[Lretrofit2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lretrofit2/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/f;->n:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/f;->o:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lretrofit2/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/f$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lretrofit2/f$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0}, Lretrofit2/Retrofit;->callFactory()Lokhttp3/Call$Factory;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/f;->a:Lokhttp3/Call$Factory;

    iget-object v0, p1, Lretrofit2/f$a;->w:Lretrofit2/CallAdapter;

    iput-object v0, p0, Lretrofit2/f;->b:Lretrofit2/CallAdapter;

    iget-object v0, p1, Lretrofit2/f$a;->a:Lretrofit2/Retrofit;

    invoke-virtual {v0}, Lretrofit2/Retrofit;->baseUrl()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/f;->c:Lokhttp3/HttpUrl;

    iget-object v0, p1, Lretrofit2/f$a;->v:Lretrofit2/Converter;

    iput-object v0, p0, Lretrofit2/f;->d:Lretrofit2/Converter;

    iget-object v0, p1, Lretrofit2/f$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/f;->e:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/f$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/f;->f:Ljava/lang/String;

    iget-object v0, p1, Lretrofit2/f$a;->r:Lokhttp3/Headers;

    iput-object v0, p0, Lretrofit2/f;->g:Lokhttp3/Headers;

    iget-object v0, p1, Lretrofit2/f$a;->s:Lokhttp3/MediaType;

    iput-object v0, p0, Lretrofit2/f;->h:Lokhttp3/MediaType;

    iget-boolean v0, p1, Lretrofit2/f$a;->n:Z

    iput-boolean v0, p0, Lretrofit2/f;->i:Z

    iget-boolean v0, p1, Lretrofit2/f$a;->o:Z

    iput-boolean v0, p0, Lretrofit2/f;->j:Z

    iget-boolean v0, p1, Lretrofit2/f$a;->p:Z

    iput-boolean v0, p0, Lretrofit2/f;->k:Z

    iget-object p1, p1, Lretrofit2/f$a;->u:[Lretrofit2/d;

    iput-object p1, p0, Lretrofit2/f;->l:[Lretrofit2/d;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lretrofit2/f;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public varargs c([Ljava/lang/Object;)Lokhttp3/Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v9, Lcom/sunia/HTREnginev2/vkl;

    iget-object v1, p0, Lretrofit2/f;->e:Ljava/lang/String;

    iget-object v2, p0, Lretrofit2/f;->c:Lokhttp3/HttpUrl;

    iget-object v3, p0, Lretrofit2/f;->f:Ljava/lang/String;

    iget-object v4, p0, Lretrofit2/f;->g:Lokhttp3/Headers;

    iget-object v5, p0, Lretrofit2/f;->h:Lokhttp3/MediaType;

    iget-boolean v6, p0, Lretrofit2/f;->i:Z

    iget-boolean v7, p0, Lretrofit2/f;->j:Z

    iget-boolean v8, p0, Lretrofit2/f;->k:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/vkl;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    iget-object p0, p0, Lretrofit2/f;->l:[Lretrofit2/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ne v1, v2, :cond_2

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v9, v3}, Lretrofit2/d;->a(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/vkl;->g()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument count ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t match expected count ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lretrofit2/f;->d:Lretrofit2/Converter;

    invoke-interface {p0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
