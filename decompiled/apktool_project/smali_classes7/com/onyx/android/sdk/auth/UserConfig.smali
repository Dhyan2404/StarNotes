.class public Lcom/onyx/android/sdk/auth/UserConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/onyx/android/sdk/auth/UserConfig;


# instance fields
.field public volatile a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/auth/UserConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/auth/UserConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/auth/UserConfig;->b:Lcom/onyx/android/sdk/auth/UserConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/auth/UserConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public static singleton()Lcom/onyx/android/sdk/auth/UserConfig;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/auth/UserConfig;->b:Lcom/onyx/android/sdk/auth/UserConfig;

    return-object v0
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/auth/UserConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/auth/UserConfig;->a:Ljava/lang/String;

    return-void
.end method
