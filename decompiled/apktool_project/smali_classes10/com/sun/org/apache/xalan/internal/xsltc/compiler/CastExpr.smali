.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
.source "SourceFile"


# static fields
.field private static InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;


# instance fields
.field private final _left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

.field private _typeTest:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v2, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v3, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v7, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v7, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v7, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v7, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v7, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v8, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v9, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v9, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    invoke-virtual {v0, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_typeTest:Z

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-ne p2, v0, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_typeTest:Z

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParent()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getParser()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method


# virtual methods
.method public getExpr()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public hasLastCall()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasLastCall()Z

    move-result p0

    return p0
.end method

.method public hasPositionCall()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->hasPositionCall()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cast("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    :cond_0
    return-void
.end method

.method public translateDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_typeTest:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v0

    const-string v1, "getExpandedTypeID"

    const-string v2, "(I)I"

    const-string v3, "com.sun.org.apache.xalan.internal.xsltc.DOM"

    invoke-virtual {p1, v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addInterfaceMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result v2

    int-to-short v2, v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/generic/SIPUSH;-><init>(S)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadContextNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p2, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEINTERFACE;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sun/org/apache/bcel/internal/generic/IF_ICMPNE;-><init>(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/BranchInstruction;)Lcom/sun/org/apache/bcel/internal/generic/BranchHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->add(Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->startIterator(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    instance-of v2, v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/BooleanType;

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateToDesynthesized(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_falseList:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;->append(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FlowList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->translateTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->getType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->_left:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object v0

    :cond_0
    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NodeType;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    goto :goto_0

    :cond_1
    instance-of p1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ResultTreeType;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->ResultTree:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_2
    :goto_0
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastExpr;->InternalTypeMap:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MultiHashtable;->maps(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0

    :cond_3
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->_type:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "DATA_CONVERSION_ERR"

    invoke-direct {v1, v2, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    throw p1
.end method
