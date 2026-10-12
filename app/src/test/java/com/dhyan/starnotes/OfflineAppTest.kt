package com.dhyan.starnotes

import android.Manifest
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.view.MotionEvent
import android.view.View
import android.widget.EditText
import androidx.test.core.app.ApplicationProvider
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper
import com.dhyan.starnotes.view.DrawingCanvasView
import org.json.JSONArray
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.shadows.ShadowToast

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class OfflineAppTest {
    private lateinit var context: Context
    private lateinit var database: NoteDatabaseHelper

    @Before fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        context.deleteDatabase("starnotes_local.db")
        database = NoteDatabaseHelper(context)
        database.getAllNotes().forEach { database.deleteNote(it.id) }
    }

    @After fun tearDown() {
        database.close()
        context.deleteDatabase("starnotes_local.db")
    }

    @Test fun notesPersistAcrossReopeningAndCanBeSearchedEditedAndDeleted() {
        val id = database.insertNote(Note(title = "Shopping", content = "Milk and bread"))
        database.close()
        database = NoteDatabaseHelper(context)
        assertEquals("Milk and bread", database.getNote(id)?.content)
        assertEquals(listOf(id), database.getAllNotes("bread").map { it.id })
        assertTrue(database.getAllNotes("' OR 1=1 --").isEmpty())
        database.updateNote(database.getNote(id)!!.copy(content = "Tea"))
        assertEquals("Tea", database.getNote(id)?.content)
        database.deleteNote(id)
        assertNull(database.getNote(id))
    }

    @Test fun mainScreenLaunchesAndOpensBothEditorsWithoutInternetPermission() {
        val controller = Robolectric.buildActivity(MainActivity::class.java).setup()
        val activity = controller.get()
        val permissions = context.packageManager.getPackageInfo(context.packageName, PackageManager.GET_PERMISSIONS)
            .requestedPermissions.orEmpty()
        assertFalse(permissions.contains(Manifest.permission.INTERNET))
        activity.findViewById<View>(R.id.btnNewTextNote).performClick()
        assertEquals(NoteEditorActivity::class.java.name, shadowOf(activity).nextStartedActivity.component?.className)
        activity.findViewById<View>(R.id.btnNewDrawing).performClick()
        assertEquals(DrawingActivity::class.java.name, shadowOf(activity).nextStartedActivity.component?.className)
        controller.pause().stop().destroy()
    }

    @Test fun textIsAutosavedAndRecreationDoesNotDuplicateTheNote() {
        val first = Robolectric.buildActivity(NoteEditorActivity::class.java).setup()
        first.get().findViewById<EditText>(R.id.editNoteTitle).setText("Draft")
        first.get().findViewById<EditText>(R.id.editNoteContent).setText("  Keep whitespace\n")
        first.pause()
        val original = database.getAllNotes().single()
        assertEquals("  Keep whitespace\n", original.content)
        val savedState = Bundle()
        first.saveInstanceState(savedState).stop().destroy()

        val restored = Robolectric.buildActivity(NoteEditorActivity::class.java)
            .create(savedState).start().restoreInstanceState(savedState).resume().visible()
        restored.get().findViewById<EditText>(R.id.editNoteContent).setText("Edited after rotation")
        restored.pause().stop().destroy()
        assertEquals(1, database.getAllNotes().size)
        assertEquals("Edited after rotation", database.getNote(original.id)?.content)
    }

    @Test fun emptyNewEditorsDoNotCreateUnwantedNotes() {
        val text = Robolectric.buildActivity(NoteEditorActivity::class.java).setup()
        text.pause().stop().destroy()
        val drawing = Robolectric.buildActivity(DrawingActivity::class.java).setup()
        drawing.pause().stop().destroy()
        assertTrue(database.getAllNotes().isEmpty())
    }

    @Test fun failedSaveKeepsEditorOpenAndReportsTheError() {
        val id = database.insertNote(Note(title = "Original", content = "Before"))
        val intent = Intent(context, NoteEditorActivity::class.java).putExtra("note_id", id)
        val controller = Robolectric.buildActivity(NoteEditorActivity::class.java, intent).setup()
        database.deleteNote(id)
        controller.get().findViewById<EditText>(R.id.editNoteContent).setText("After")
        controller.get().findViewById<View>(R.id.btnEditorSave).performClick()
        assertFalse(controller.get().isFinishing)
        assertEquals(context.getString(R.string.save_failed), ShadowToast.getTextOfLatestToast())
        controller.pause().stop().destroy()
    }

    @Test fun clearingAnExistingTextNotePersistsTheEmptyContent() {
        val id = database.insertNote(Note(title = "Old", content = "Old content"))
        val controller = Robolectric.buildActivity(NoteEditorActivity::class.java,
            Intent(context, NoteEditorActivity::class.java).putExtra("note_id", id)).setup()
        controller.get().findViewById<EditText>(R.id.editNoteTitle).setText("")
        controller.get().findViewById<EditText>(R.id.editNoteContent).setText("")
        controller.pause().stop().destroy()
        assertEquals("", database.getNote(id)?.content)
        assertEquals(1, database.getAllNotes().size)
    }

    @Test fun strokesKeepTheirEndpointAndSurviveSavingUndoAndClear() {
        val canvas = DrawingCanvasView(context)
        touch(canvas, MotionEvent.ACTION_DOWN, 10f, 20f)
        touch(canvas, MotionEvent.ACTION_UP, 30f, 40f)
        val original = canvas.serializeDrawing()
        val points = JSONArray(original).getJSONObject(0).getJSONArray("points")
        assertEquals(30.0, points.getJSONObject(points.length() - 1).getDouble("x"), 0.0)
        val restored = DrawingCanvasView(context)
        restored.deserializeDrawing(original)
        assertEquals(original, restored.serializeDrawing())
        restored.undo()
        assertTrue(restored.isEmpty())
        restored.deserializeDrawing(original)
        restored.clearCanvas()
        assertEquals("[]", restored.serializeDrawing())
    }

    @Test fun cancelledTouchesAndMalformedDataDoNotDamageSavedStrokes() {
        val canvas = DrawingCanvasView(context)
        touch(canvas, MotionEvent.ACTION_DOWN, 5f, 5f)
        touch(canvas, MotionEvent.ACTION_UP, 5f, 5f)
        val saved = canvas.serializeDrawing()
        assertEquals(1, JSONArray(saved).getJSONObject(0).getJSONArray("points").length())
        touch(canvas, MotionEvent.ACTION_DOWN, 10f, 10f)
        touch(canvas, MotionEvent.ACTION_CANCEL, 20f, 20f)
        assertEquals(saved, canvas.serializeDrawing())
        assertThrows(IllegalArgumentException::class.java) { canvas.deserializeDrawing("not JSON") }
        assertEquals(saved, canvas.serializeDrawing())
    }

    @Test fun drawingIsAutosavedAndRecreationKeepsTheSameNote() {
        val first = Robolectric.buildActivity(DrawingActivity::class.java).setup()
        val canvas = first.get().findViewById<DrawingCanvasView>(R.id.drawingCanvasView)
        touch(canvas, MotionEvent.ACTION_DOWN, 10f, 10f)
        touch(canvas, MotionEvent.ACTION_UP, 20f, 20f)
        first.pause()
        val original = database.getAllNotes().single()
        val state = Bundle()
        first.saveInstanceState(state).stop().destroy()
        val restored = Robolectric.buildActivity(DrawingActivity::class.java)
            .create(state).start().restoreInstanceState(state).resume().visible()
        val restoredCanvas = restored.get().findViewById<DrawingCanvasView>(R.id.drawingCanvasView)
        assertEquals(original.drawingData, restoredCanvas.serializeDrawing())
        touch(restoredCanvas, MotionEvent.ACTION_DOWN, 30f, 30f)
        touch(restoredCanvas, MotionEvent.ACTION_UP, 40f, 40f)
        restored.pause().stop().destroy()
        assertEquals(1, database.getAllNotes().size)
        assertEquals(2, JSONArray(database.getNote(original.id)!!.drawingData).length())
    }

    private fun touch(canvas: DrawingCanvasView, action: Int, x: Float, y: Float) {
        val event = MotionEvent.obtain(0L, 10L, action, x, y, 0)
        try { canvas.onTouchEvent(event) } finally { event.recycle() }
    }
}
