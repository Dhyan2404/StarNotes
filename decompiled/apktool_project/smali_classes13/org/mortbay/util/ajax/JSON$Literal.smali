.class public Lorg/mortbay/util/ajax/JSON$Literal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Literal"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/mortbay/util/ajax/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$Literal;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addJSON(Ljava/lang/StringBuffer;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON$Literal;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON$Literal;->a:Ljava/lang/String;

    return-object p0
.end method
