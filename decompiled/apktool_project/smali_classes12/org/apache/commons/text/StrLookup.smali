.class public abstract Lorg/apache/commons/text/StrLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/lookup/StringLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrLookup$d;,
        Lorg/apache/commons/text/StrLookup$c;,
        Lorg/apache/commons/text/StrLookup$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/lookup/StringLookup;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lorg/apache/commons/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StrLookup$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrLookup$b;-><init>(Ljava/util/Map;)V

    sput-object v0, Lorg/apache/commons/text/StrLookup;->a:Lorg/apache/commons/text/StrLookup;

    new-instance v0, Lorg/apache/commons/text/StrLookup$d;

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrLookup$d;-><init>(Lorg/apache/commons/text/StrLookup$a;)V

    sput-object v0, Lorg/apache/commons/text/StrLookup;->b:Lorg/apache/commons/text/StrLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapLookup(Ljava/util/Map;)Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Lorg/apache/commons/text/StrLookup<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrLookup$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrLookup$b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static noneLookup()Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/text/StrLookup;->a:Lorg/apache/commons/text/StrLookup;

    return-object v0
.end method

.method public static resourceBundleLookup(Ljava/util/ResourceBundle;)Lorg/apache/commons/text/StrLookup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle;",
            ")",
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/text/StrLookup$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/text/StrLookup$c;-><init>(Ljava/util/ResourceBundle;Lorg/apache/commons/text/StrLookup$a;)V

    return-object v0
.end method

.method public static systemPropertiesLookup()Lorg/apache/commons/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/StrLookup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/text/StrLookup;->b:Lorg/apache/commons/text/StrLookup;

    return-object v0
.end method
