.class public final Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCouchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,496:1\n1549#2:497\n1620#2,3:498\n1549#2:501\n1620#2,3:502\n1603#2,9:505\n1855#2:514\n1856#2:516\n1612#2:517\n1603#2,9:518\n1855#2:527\n1856#2:529\n1612#2:530\n2634#2:531\n2634#2:533\n1549#2:535\n1620#2,3:536\n1855#2,2:539\n1549#2:541\n1620#2,3:542\n1549#2:547\n1620#2,3:548\n1549#2:553\n1620#2,3:554\n1855#2,2:559\n1#3:515\n1#3:528\n1#3:532\n1#3:534\n37#4,2:545\n37#4,2:551\n37#4,2:557\n*S KotlinDebug\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n*L\n106#1:497\n106#1:498,3\n146#1:501\n146#1:502,3\n147#1:505,9\n147#1:514\n147#1:516\n147#1:517\n151#1:518,9\n151#1:527\n151#1:529\n151#1:530\n263#1:531\n271#1:533\n390#1:535\n390#1:536,3\n391#1:539,2\n415#1:541\n415#1:542,3\n426#1:547\n426#1:548,3\n435#1:553\n435#1:554,3\n244#1:559,2\n147#1:515\n151#1:528\n263#1:532\n271#1:534\n418#1:545,2\n429#1:551,2\n438#1:557,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001f\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0010J\u0016\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0018\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001a\u001a\u00020\u000eJ\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eJ\u0016\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u0018\u0010#\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)J+\u0010*\u001a\u0004\u0018\u0001H+\"\u0004\u0008\u0000\u0010+2\u0006\u0010\u0015\u001a\u00020,2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H+0.H\u0007\u00a2\u0006\u0002\u0010/J\u000e\u00100\u001a\u00020,2\u0006\u00101\u001a\u000202J3\u00100\u001a\u0004\u0018\u0001H+\"\u0004\u0008\u0000\u0010+2\u0006\u00101\u001a\u0002022\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H+0.2\u0008\u0008\u0002\u00103\u001a\u00020\u000e\u00a2\u0006\u0002\u00104J\u001c\u00100\u001a\u0008\u0012\u0004\u0012\u00020,0\u00102\u000e\u00105\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u0010J\u001e\u00106\u001a\u0008\u0012\u0004\u0012\u00020,072\u0010\u00105\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u00010\u0010J:\u00108\u001a\u0008\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\u0008\u0000\u0010+2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H+0.2\u0008\u0008\u0002\u00103\u001a\u00020\u000eJ:\u00109\u001a\u0008\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\u0008\u0000\u0010+2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H+0.2\u0008\u0008\u0002\u00103\u001a\u00020\u000eJ\u0016\u0010:\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000eJ\u001f\u0010;\u001a\u00020\u000e2\u0012\u0010<\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e\u00a2\u0006\u0002\u0010=J\u0006\u0010>\u001a\u00020?J\u0010\u0010>\u001a\u00020?2\u0008\u0008\u0002\u0010@\u001a\u00020\u0012J\u0016\u0010A\u001a\u00020?2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020\u0012J\u000e\u0010B\u001a\u00020\u000c2\u0006\u0010C\u001a\u00020DJ\u0016\u0010E\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u0016\u0010F\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u001a\u0010G\u001a\u0004\u0018\u00010%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u001c\u0010J\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010KJ\u0014\u0010L\u001a\u00020\u000c2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0010J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010O\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J \u0010P\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u000e2\u0008\u0008\u0002\u0010Q\u001a\u00020\u0012J\u0016\u0010R\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010S\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010T\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\"\u0010U\u001a\u0008\u0012\u0004\u0012\u00020V0\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0010J\'\u0010X\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u00012\u0012\u0010<\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e\u00a2\u0006\u0002\u0010YJ-\u0010Z\u001a\u00020\u000c2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00102\u0012\u0010<\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\u0004\"\u00020\u000e\u00a2\u0006\u0002\u0010\\J\u0016\u0010]\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010^\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000eJ\u0016\u0010_\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u001e\u0010`\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00010KJ\u000e\u0010a\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000eJ\u0006\u0010b\u001a\u00020\u000cJ\u0006\u0010c\u001a\u00020\u000cJ\u000e\u0010d\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000eJ\u0016\u0010e\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0001J\u000e\u0010f\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000eJ0\u0010g\u001a\u00020\u000c2\u0006\u0010h\u001a\u00020\u000e2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0008\u0008\u0002\u0010j\u001a\u00020\u000e2\u0008\u0008\u0002\u0010k\u001a\u00020\u0012J(\u0010l\u001a\u0004\u0018\u00010\u000c2\u0006\u0010h\u001a\u00020\u000e2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0008\u0008\u0002\u0010k\u001a\u00020\u0012J(\u0010m\u001a\u0004\u0018\u00010\u000c2\u0006\u0010h\u001a\u00020\u000e2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0008\u0008\u0002\u0010k\u001a\u00020\u0012J\u0018\u0010n\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u0016\u0010o\u001a\u00020p2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010q\u001a\u00020\u000cJ\u001c\u0010r\u001a\u0008\u0012\u0004\u0012\u00020,0\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)J0\u0010s\u001a\u0008\u0012\u0004\u0012\u0002H+0\u0010\"\u0004\u0008\u0000\u0010+2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H+0.J\u001e\u0010t\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)J\u0018\u0010u\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010,J\u001e\u0010v\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u000e\u0010w\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u0010J\u001f\u0010x\u001a\u0004\u0018\u00010,\"\u0008\u0008\u0000\u0010+*\u00020y2\u0006\u0010z\u001a\u0002H+\u00a2\u0006\u0002\u0010{J\u001a\u0010x\u001a\u0004\u0018\u00010,2\u0006\u0010z\u001a\u00020\u00012\u0008\u0010|\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010}\u001a\u00020\u000cJ\u0018\u0010~\u001a\u00020%2\u0006\u0010H\u001a\u00020I2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010\u007f\u001a\u00020D*\u00080\u0080\u0001j\u0003`\u0081\u0001J\u0015\u0010\u0082\u0001\u001a\u00020\u000e*\u0002022\u0008\u0008\u0002\u00103\u001a\u00020\u000eR\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;",
        "",
        "()V",
        "allResults",
        "",
        "Lcom/couchbase/lite/SelectResult;",
        "getAllResults",
        "()[Lcom/couchbase/lite/SelectResult;",
        "setAllResults",
        "([Lcom/couchbase/lite/SelectResult;)V",
        "[Lcom/couchbase/lite/SelectResult;",
        "anyExpression",
        "Lcom/couchbase/lite/Expression;",
        "key",
        "",
        "list",
        "",
        "checkReplicatedDocumentValid",
        "",
        "replication",
        "Lcom/couchbase/lite/DocumentReplication;",
        "document",
        "Lcom/couchbase/lite/ReplicatedDocument;",
        "commitDocExpression",
        "dbFullName",
        "userId",
        "docId",
        "delete",
        "",
        "database",
        "Lcom/couchbase/lite/Database;",
        "id",
        "equalExpression",
        "property",
        "value",
        "equalOrNullExpression",
        "fromBy",
        "Lcom/couchbase/lite/Query;",
        "from",
        "Lcom/couchbase/lite/From;",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "fromMutableDocument",
        "T",
        "Lcom/couchbase/lite/MutableDocument;",
        "cls",
        "Ljava/lang/Class;",
        "(Lcom/couchbase/lite/MutableDocument;Ljava/lang/Class;)Ljava/lang/Object;",
        "fromQueryResult",
        "result",
        "Lcom/couchbase/lite/Result;",
        "collectionName",
        "(Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;",
        "resultList",
        "fromQueryResultList",
        "",
        "fromResultList",
        "fromResultList2",
        "fuzzyMatchExpression",
        "getNestedProperty",
        "nestedProperty",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "getOrderIndexOrdering",
        "Lcom/couchbase/lite/Ordering;",
        "ascending",
        "getOrdering",
        "getStatusExpression",
        "status",
        "",
        "greaterThanExpression",
        "greaterThanOrEqualToExpression",
        "groupBy",
        "where",
        "Lcom/couchbase/lite/Where;",
        "inExpression",
        "",
        "inIdsExpression",
        "ids",
        "isDeleteDocument",
        "lessThanExpression",
        "likeExpression",
        "ignoreCase",
        "listContains",
        "listEmptyExpression",
        "listNotEmptyExpression",
        "mapToDocumentList",
        "Lcom/couchbase/lite/Document;",
        "docIdList",
        "nestedEqualExpression",
        "(Ljava/lang/Object;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;",
        "nestedInExpression",
        "valueList",
        "(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;",
        "nonExpression",
        "notEmpty",
        "notEqualExpression",
        "notInExpression",
        "notNullOrMissing",
        "noteTagExpression",
        "noteTreeExpression",
        "nullOrEmpty",
        "nullOrEqualExpression",
        "nullOrMissing",
        "orLikeExpression",
        "query",
        "keyList",
        "format",
        "caseSensitive",
        "orPrefixLikeExpression",
        "orSuffixLikeExpression",
        "orderBy",
        "queryDocumentCount",
        "",
        "expression",
        "queryDocumentList",
        "queryModelList",
        "queryResultList",
        "save",
        "saveList",
        "documentList",
        "toMutableDocument",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "data",
        "(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;",
        "uniqueId",
        "uniqueIdValued",
        "whereBy",
        "getCBExceptionCode",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "toJsonString",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCouchUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,496:1\n1549#2:497\n1620#2,3:498\n1549#2:501\n1620#2,3:502\n1603#2,9:505\n1855#2:514\n1856#2:516\n1612#2:517\n1603#2,9:518\n1855#2:527\n1856#2:529\n1612#2:530\n2634#2:531\n2634#2:533\n1549#2:535\n1620#2,3:536\n1855#2,2:539\n1549#2:541\n1620#2,3:542\n1549#2:547\n1620#2,3:548\n1549#2:553\n1620#2,3:554\n1855#2,2:559\n1#3:515\n1#3:528\n1#3:532\n1#3:534\n37#4,2:545\n37#4,2:551\n37#4,2:557\n*S KotlinDebug\n*F\n+ 1 CouchUtils.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchUtils\n*L\n106#1:497\n106#1:498,3\n146#1:501\n146#1:502,3\n147#1:505,9\n147#1:514\n147#1:516\n147#1:517\n151#1:518,9\n151#1:527\n151#1:529\n151#1:530\n263#1:531\n271#1:533\n390#1:535\n390#1:536,3\n391#1:539,2\n415#1:541\n415#1:542,3\n426#1:547\n426#1:548,3\n435#1:553\n435#1:554,3\n244#1:559,2\n147#1:515\n151#1:528\n263#1:532\n271#1:534\n418#1:545,2\n429#1:551,2\n438#1:557,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static allResults:[Lcom/couchbase/lite/SelectResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/SelectResult;

    sget-object v1, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    invoke-static {v1}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v1

    const-string v2, "expression(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/couchbase/lite/SelectResult;->all()Lcom/couchbase/lite/SelectResult$From;

    move-result-object v1

    const-string v2, "all(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->allResults:[Lcom/couchbase/lite/SelectResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/couchbase/lite/Database;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->saveList$lambda$6(Ljava/util/List;Lcom/couchbase/lite/Database;)V

    return-void
.end method

.method public static synthetic fromQueryResult$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "_default"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult(Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fromResultList$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "_default"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fromResultList2$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "_default"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList2(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOrderIndexOrdering$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;ZILjava/lang/Object;)Lcom/couchbase/lite/Ordering;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrderIndexOrdering(Z)Lcom/couchbase/lite/Ordering;

    move-result-object p0

    return-object p0
.end method

.method private final groupBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;
    .locals 1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getGroupBy()[Lcom/couchbase/lite/Expression;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getGroupBy()[Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Expression;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Where;->groupBy([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/GroupBy;

    move-result-object p0

    const-string p1, "groupBy(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/couchbase/lite/Ordering;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/GroupBy;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/GroupBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic likeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic orLikeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const-string p3, "%%%s%%"

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orLikeExpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic orPrefixLikeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orPrefixLikeExpression(Ljava/lang/String;Ljava/util/List;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic orSuffixLikeExpression$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orSuffixLikeExpression(Ljava/lang/String;Ljava/util/List;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method private final orderBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;
    .locals 1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Ordering;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Where;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/couchbase/lite/Where;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private static final saveList$lambda$6(Ljava/util/List;Lcom/couchbase/lite/Database;)V
    .locals 2

    const-string v0, "$database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/MutableDocument;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->save(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/MutableDocument;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic toJsonString$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Lcom/couchbase/lite/Result;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p2, "_default"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toJsonString(Lcom/couchbase/lite/Result;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final whereBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->groupBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orderBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final anyExpression(Ljava/lang/String;Ljava/util/List;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "variable"

    invoke-static {p0}, Lcom/couchbase/lite/ArrayExpression;->variable(Ljava/lang/String;)Lcom/couchbase/lite/VariableExpression;

    move-result-object p0

    const-string v0, "variable(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Lcom/couchbase/lite/Expression;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/couchbase/lite/Expression;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/couchbase/lite/Expression;

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Expression;->in([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    const-string v0, "let(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/couchbase/lite/ArrayExpression;->any(Lcom/couchbase/lite/VariableExpression;)Lcom/couchbase/lite/ArrayExpressionIn;

    move-result-object p0

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/ArrayExpressionIn;->in(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/ArrayExpressionSatisfies;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/ArrayExpressionSatisfies;->satisfies(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "satisfies(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final checkReplicatedDocumentValid(Lcom/couchbase/lite/DocumentReplication;Lcom/couchbase/lite/ReplicatedDocument;)Z
    .locals 6
    .param p1    # Lcom/couchbase/lite/DocumentReplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatedDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->isDeleteDocument(Lcom/couchbase/lite/ReplicatedDocument;)Z

    move-result p0

    const-string v0, " push"

    const-string v1, " pull"

    const-class v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->isPush()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " delete data:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getFlags()Ljava/util/EnumSet;

    move-result-object p0

    sget-object v4, Lcom/couchbase/lite/DocumentFlag;->ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->isPush()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " remove data:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_3
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->isPush()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data error:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", documentId: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final commitDocExpression()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "commitStatus"

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isValued()Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "isValued(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "docId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final delete(Lcom/couchbase/lite/Database;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "singletonList(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->mapToDocumentList(Lcom/couchbase/lite/Database;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Document;

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "equalTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equalOrNullExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final fromBy(Lcom/couchbase/lite/From;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;
    .locals 1
    .param p1    # Lcom/couchbase/lite/From;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    const-string v0, "where(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->whereBy(Lcom/couchbase/lite/Where;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOrdering()[Lcom/couchbase/lite/Ordering;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Ordering;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/From;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getLimitExpression()Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getOffsetExpression()Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/couchbase/lite/From;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final fromMutableDocument(Lcom/couchbase/lite/MutableDocument;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/MutableDocument;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = ""
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "fromQueryResult(result: Result, cls: Class<T>)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cls"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->toMap()Ljava/util/Map;

    move-result-object p0

    const-string p1, "toMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse document fail, title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "title"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",docId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniqueId"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse document fail, map:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public final fromQueryResult(Lcom/couchbase/lite/Result;)Lcom/couchbase/lite/MutableDocument;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "id"

    .line 1
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_default"

    .line 2
    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Result;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "uniqueId"

    .line 3
    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Dictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/couchbase/lite/MutableDocument;

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/Dictionary;->toJSON()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    new-instance v0, Lcom/couchbase/lite/MutableDocument;

    invoke-virtual {p1}, Lcom/couchbase/lite/Result;->toJSON()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final fromQueryResult(Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/Result;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cls"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "collectionName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/couchbase/lite/Result;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 14
    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->toJSON()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/couchbase/lite/Result;->toJSON()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final fromQueryResult(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/MutableDocument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/couchbase/lite/Result;

    .line 10
    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult(Lcom/couchbase/lite/Result;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p0
.end method

.method public final fromQueryResultList(Ljava/util/List;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/MutableDocument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/Result;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult(Lcom/couchbase/lite/Result;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final fromResultList(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "cls"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "collectionName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Result;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v0, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toJsonString(Lcom/couchbase/lite/Result;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p3, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public final fromResultList2(Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "cls"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "collectionName"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Result;

    sget-object v1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {v1, v0, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult(Lcom/couchbase/lite/Result;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public final fuzzyMatchExpression(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final getAllResults()[Lcom/couchbase/lite/SelectResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->allResults:[Lcom/couchbase/lite/SelectResult;

    return-object p0
.end method

.method public final getCBExceptionCode(Ljava/lang/Exception;)I
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/couchbase/lite/CouchbaseLiteException;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/couchbase/lite/CouchbaseLiteException;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public final varargs getNestedProperty([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "nestedProperty"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOrderIndexOrdering()Lcom/couchbase/lite/Ordering;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "orderIndex"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object p0

    return-object p0
.end method

.method public final getOrderIndexOrdering(Z)Lcom/couchbase/lite/Ordering;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "orderIndex"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;

    move-result-object p0

    return-object p0
.end method

.method public final getOrdering(Ljava/lang/String;Z)Lcom/couchbase/lite/Ordering;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Ordering;->property(Ljava/lang/String;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object p0

    const-string p1, "property(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Ordering$SortOrder;->ascending()Lcom/couchbase/lite/Ordering;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Ordering$SortOrder;->descending()Lcom/couchbase/lite/Ordering;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final getStatusExpression(I)Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final greaterThanExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->greaterThan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "greaterThan(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final greaterThanOrEqualToExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->greaterThanOrEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "greaterThanOrEqualTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "booleanValue(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p1

    new-array p2, v0, [Lcom/couchbase/lite/Expression;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Expression;

    array-length p2, p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Expression;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Expression;->in([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "let(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final inIdsExpression(Ljava/util/List;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "booleanValue(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "uniqueId"

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final isDeleteDocument(Lcom/couchbase/lite/ReplicatedDocument;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatedDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "document"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatedDocument;->getFlags()Ljava/util/EnumSet;

    move-result-object p0

    sget-object p1, Lcom/couchbase/lite/DocumentFlag;->DELETED:Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final lessThanExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->lessThan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "lessThan(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    const-string p1, "property(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    const-string p2, "value(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/couchbase/lite/Function;->lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p1}, Lcom/couchbase/lite/Function;->lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->like(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->like(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final listContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/ArrayFunction;->contains(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "contains(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final listEmptyExpression(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/ArrayFunction;->length(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "equalTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final listNotEmptyExpression(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/ArrayFunction;->length(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->notEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "notEqualTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final mapToDocumentList(Lcom/couchbase/lite/Database;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Document;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "docIdList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final varargs nestedEqualExpression(Ljava/lang/Object;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nestedProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getNestedProperty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final varargs nestedInExpression(Ljava/util/List;[Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "valueList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nestedProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getNestedProperty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->inExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final nonExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->notEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "notEqualTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final notEmpty(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrEmpty(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->not(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "not(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final notEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->notEqualTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "notEqualTo(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final notInExpression(Ljava/lang/String;Ljava/util/Collection;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/couchbase/lite/Expression;

    invoke-interface {p0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Expression;

    array-length p2, p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/Expression;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Expression;->in([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->not(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final notNullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isValued()Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "isValued(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final noteTagExpression()Lcom/couchbase/lite/Expression;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "modeType"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final noteTreeExpression()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "activeScene"

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isValued()Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "association"

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Expression;->isValued()Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "or(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final nullOrEmpty(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isNullOrMissing()Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "isNullOrMissing(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->value(Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Expression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    const-string v0, "equalTo(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "or(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final nullOrEqualExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->nullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "or(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final nullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->isNotValued()Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p1, "isNotValued(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final orLikeExpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "query"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keyList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "format"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string v0, "booleanValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "format(format, *args)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {v2, v1, p1, v3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->likeExpression(Ljava/lang/String;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/Expression;

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const-string p2, "or(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public final orPrefixLikeExpression(Ljava/lang/String;Ljava/util/List;Z)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "%s%%"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orLikeExpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final orSuffixLikeExpression(Ljava/lang/String;Ljava/util/List;Z)Lcom/couchbase/lite/Expression;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/couchbase/lite/Expression;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "%%%s"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->orLikeExpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final queryDocumentCount(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Expression;)J
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expression"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;

    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchCollections;->queryDocumentCount(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Expression;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final queryDocumentList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/MutableDocument;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryResultList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromQueryResult(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryModelList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/Database;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryResultList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromResultList$default(Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final queryResultList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Result;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "queryArgs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getSelectResults()[Lcom/couchbase/lite/SelectResult;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getDistinct()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/SelectResult;

    invoke-static {p0}, Lcom/couchbase/lite/QueryBuilder;->selectDistinct([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object p0

    goto :goto_0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/couchbase/lite/SelectResult;

    invoke-static {p0}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->fromBy(Lcom/couchbase/lite/From;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Lcom/couchbase/lite/Query;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final save(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/MutableDocument;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final saveList(Lcom/couchbase/lite/Database;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Database;",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/MutableDocument;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string p0, "database"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sunia/HTREnginev2/dde;

    invoke-direct {p0, p2, p1}, Lcom/sunia/HTREnginev2/dde;-><init>(Ljava/util/List;Lcom/couchbase/lite/Database;)V

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public final setAllResults([Lcom/couchbase/lite/SelectResult;)V
    .locals 0
    .param p1    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->allResults:[Lcom/couchbase/lite/SelectResult;

    return-void
.end method

.method public final toJsonString(Lcom/couchbase/lite/Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "collectionName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/couchbase/lite/Result;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    const-string p2, "toJSON(...)"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->toJSON()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Result;->toJSON()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toMutableDocument(Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
            ">(TT;)",
            "Lcom/couchbase/lite/MutableDocument;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->toMutableDocument(Ljava/lang/Object;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public final toMutableDocument(Ljava/lang/Object;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    filled-new-array {v0}, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {p1, p2, p0}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final uniqueIdValued()Lcom/couchbase/lite/Expression;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uniqueId"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->notNullOrMissing(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method
