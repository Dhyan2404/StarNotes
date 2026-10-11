.class public final Lretrofit2/b;
.super Lretrofit2/CallAdapter$Factory;
.source "SourceFile"


# static fields
.field public static final a:Lretrofit2/CallAdapter$Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/b;

    invoke-direct {v0}, Lretrofit2/b;-><init>()V

    sput-object v0, Lretrofit2/b;->a:Lretrofit2/CallAdapter$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lretrofit2/CallAdapter$Factory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lretrofit2/Call;

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/sunia/HTREnginev2/jzn;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Lretrofit2/b$a;

    invoke-direct {p2, p0, p1}, Lretrofit2/b$a;-><init>(Lretrofit2/b;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
