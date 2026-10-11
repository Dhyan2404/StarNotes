.class public Lorg/mortbay/util/ajax/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertible;


# instance fields
.field public final synthetic a:Lorg/mortbay/util/ajax/JSON$Convertor;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lorg/mortbay/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;Lorg/mortbay/util/ajax/JSON$Convertor;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/util/ajax/b;->c:Lorg/mortbay/util/ajax/JSON;

    iput-object p2, p0, Lorg/mortbay/util/ajax/b;->a:Lorg/mortbay/util/ajax/JSON$Convertor;

    iput-object p3, p0, Lorg/mortbay/util/ajax/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public toJSON(Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/b;->a:Lorg/mortbay/util/ajax/JSON$Convertor;

    iget-object p0, p0, Lorg/mortbay/util/ajax/b;->b:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lorg/mortbay/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V

    return-void
.end method
