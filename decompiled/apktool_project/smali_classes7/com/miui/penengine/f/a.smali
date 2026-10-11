.class public Lcom/miui/penengine/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "yudi"

.field public static final b:Ljava/lang/String; = "liuqin"

.field public static final c:Ljava/lang/String; = "pipa"

.field public static final d:Ljava/lang/String; = "elish"

.field public static final e:Ljava/lang/String; = "enuma"

.field public static final f:Ljava/lang/String; = "sheng"

.field public static final g:Ljava/lang/String; = "dagu"

.field public static final h:Ljava/lang/String; = "dizi"

.field public static final i:Ljava/lang/String; = "ruan"

.field public static final j:Ljava/lang/String; = "muyu"

.field public static final k:Ljava/lang/String; = "uke"

.field public static final l:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "muyu"

    const-string v1, "uke"

    const-string v2, "sheng"

    const-string v3, "dizi"

    const-string v4, "ruan"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/penengine/f/a;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/penengine/f/a;->l:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
