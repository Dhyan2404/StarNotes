.class public final Lcom/sunia/HTREnginev2/l8j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/mnj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/l8j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sunia/HTREnginev2/mnj;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/sunia/HTREnginev2/l8j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sunia/HTREnginev2/l8j$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/l8j$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/l8j$c<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/l8j;->a:Ljava/util/concurrent/ConcurrentMap;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l8j;->b:Lcom/sunia/HTREnginev2/l8j$c;

    return-void
.end method

.method public static b()Lcom/sunia/HTREnginev2/l8j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/l8j;

    new-instance v1, Lcom/sunia/HTREnginev2/l8j$b;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/l8j$b;-><init>()V

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/l8j;-><init>(Lcom/sunia/HTREnginev2/l8j$c;)V

    return-object v0
.end method

.method public static c()Lcom/sunia/HTREnginev2/l8j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/l8j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/l8j;

    new-instance v1, Lcom/sunia/HTREnginev2/l8j$a;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/l8j$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/l8j;-><init>(Lcom/sunia/HTREnginev2/l8j$c;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/l8j;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l8j;->b:Lcom/sunia/HTREnginev2/l8j$c;

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/l8j$c;->a(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Lcom/sunia/HTREnginev2/l8j$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sunia/HTREnginev2/l8j$c<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l8j;->b:Lcom/sunia/HTREnginev2/l8j$c;

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l8j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
