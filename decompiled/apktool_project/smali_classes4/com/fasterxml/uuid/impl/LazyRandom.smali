.class public final Lcom/fasterxml/uuid/impl/LazyRandom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/fasterxml/uuid/impl/LazyRandom;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sharedSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lcom/fasterxml/uuid/impl/LazyRandom;->a:Ljava/security/SecureRandom;

    return-object v0
.end method
