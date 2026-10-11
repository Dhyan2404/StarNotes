.class public Lorg/apache/xerces/parsers/XMLGrammarPreparser$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/XMLGrammarPreparser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

.field public b:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/parsers/XMLGrammarPreparser$a;->b:I

    iput-object p1, p0, Lorg/apache/xerces/parsers/XMLGrammarPreparser$a;->a:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    return-void
.end method
