.class public abstract Lcom/fasterxml/uuid/StringArgGenerator;
.super Lcom/fasterxml/uuid/UUIDGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/uuid/UUIDGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generate(Ljava/lang/String;)Ljava/util/UUID;
.end method

.method public abstract generate([B)Ljava/util/UUID;
.end method
