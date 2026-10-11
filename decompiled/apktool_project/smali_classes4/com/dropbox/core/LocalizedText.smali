.class public final Lcom/dropbox/core/LocalizedText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Lcom/dropbox/core/LocalizedText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/LocalizedText$a;

    invoke-direct {v0}, Lcom/dropbox/core/LocalizedText$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/LocalizedText;->c:Lcom/dropbox/core/stone/StoneSerializer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/LocalizedText;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dropbox/core/LocalizedText;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "locale"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "text"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/LocalizedText;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/LocalizedText;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/LocalizedText;->a:Ljava/lang/String;

    return-object p0
.end method
