.class public final Lcom/dropbox/core/stone/StoneSerializers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/stone/StoneSerializers$i;,
        Lcom/dropbox/core/stone/StoneSerializers$g;,
        Lcom/dropbox/core/stone/StoneSerializers$k;,
        Lcom/dropbox/core/stone/StoneSerializers$j;,
        Lcom/dropbox/core/stone/StoneSerializers$m;,
        Lcom/dropbox/core/stone/StoneSerializers$c;,
        Lcom/dropbox/core/stone/StoneSerializers$l;,
        Lcom/dropbox/core/stone/StoneSerializers$b;,
        Lcom/dropbox/core/stone/StoneSerializers$a;,
        Lcom/dropbox/core/stone/StoneSerializers$e;,
        Lcom/dropbox/core/stone/StoneSerializers$d;,
        Lcom/dropbox/core/stone/StoneSerializers$f;,
        Lcom/dropbox/core/stone/StoneSerializers$h;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boolean_()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$a;->b:Lcom/dropbox/core/stone/StoneSerializers$a;

    return-object v0
.end method

.method public static bytes()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$b;->b:Lcom/dropbox/core/stone/StoneSerializers$b;

    return-object v0
.end method

.method public static float32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$e;->b:Lcom/dropbox/core/stone/StoneSerializers$e;

    return-object v0
.end method

.method public static float64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$d;->b:Lcom/dropbox/core/stone/StoneSerializers$d;

    return-object v0
.end method

.method public static int32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$f;->b:Lcom/dropbox/core/stone/StoneSerializers$f;

    return-object v0
.end method

.method public static int64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$h;->b:Lcom/dropbox/core/stone/StoneSerializers$h;

    return-object v0
.end method

.method public static list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$g;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$g;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static map(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$i;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$i;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$j;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$j;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    return-object v0
.end method

.method public static nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;)",
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$k;

    invoke-direct {v0, p0}, Lcom/dropbox/core/stone/StoneSerializers$k;-><init>(Lcom/dropbox/core/stone/StructSerializer;)V

    return-object v0
.end method

.method public static string()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$l;->b:Lcom/dropbox/core/stone/StoneSerializers$l;

    return-object v0
.end method

.method public static timestamp()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$c;->b:Lcom/dropbox/core/stone/StoneSerializers$c;

    return-object v0
.end method

.method public static uInt32()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$h;->b:Lcom/dropbox/core/stone/StoneSerializers$h;

    return-object v0
.end method

.method public static uInt64()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$h;->b:Lcom/dropbox/core/stone/StoneSerializers$h;

    return-object v0
.end method

.method public static void_()Lcom/dropbox/core/stone/StoneSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/dropbox/core/stone/StoneSerializers$m;->b:Lcom/dropbox/core/stone/StoneSerializers$m;

    return-object v0
.end method
