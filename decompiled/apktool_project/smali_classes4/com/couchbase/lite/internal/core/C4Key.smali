.class public final Lcom/couchbase/lite/internal/core/C4Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Key$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Key$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Key;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Key;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Key;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Key$NativeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPbkdf2Key(Ljava/lang/String;)[B
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Key;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Key$NativeImpl;

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/core/C4Key$NativeImpl;->nPbkdf2(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v0, "CouchbaseLite"

    const/16 v1, 0x16

    const-string v2, "Could not generate key"

    invoke-direct {p0, v2, v0, v1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method
