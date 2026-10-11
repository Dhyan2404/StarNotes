.class public final Lretrofit2/d$m;
.super Lretrofit2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/d<",
        "Lokhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lretrofit2/d$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/d$m;

    invoke-direct {v0}, Lretrofit2/d$m;-><init>()V

    sput-object v0, Lretrofit2/d$m;->a:Lretrofit2/d$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Lretrofit2/d$m;->d(Lcom/sunia/HTREnginev2/vkl;Lokhttp3/MultipartBody$Part;)V

    return-void
.end method

.method public d(Lcom/sunia/HTREnginev2/vkl;Lokhttp3/MultipartBody$Part;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/vkl;->d(Lokhttp3/MultipartBody$Part;)V

    :cond_0
    return-void
.end method
