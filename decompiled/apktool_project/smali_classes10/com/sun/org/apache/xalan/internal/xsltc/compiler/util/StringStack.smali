.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/StringStack;
.super Ljava/util/Stack;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x14e99f751ab6c7caL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method


# virtual methods
.method public peekString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public popString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public pushString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
