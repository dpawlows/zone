# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Rank'
        db.create_table('register_rank', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=255)),
        ))
        db.send_create_signal('register', ['Rank'])

        # Adding model 'Person'
        db.create_table('register_person', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('first_name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('last_name', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('email', self.gf('django.db.models.fields.EmailField')(max_length=255)),
            ('university', self.gf('django.db.models.fields.CharField')(max_length=255)),
            ('rank', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['register.Rank'])),
            ('housing', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('presentation', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('competition', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('abstract', self.gf('django.db.models.fields.TextField')(max_length=20000, null=True, blank=True)),
        ))
        db.send_create_signal('register', ['Person'])

    def backwards(self, orm):
        # Deleting model 'Rank'
        db.delete_table('register_rank')

        # Deleting model 'Person'
        db.delete_table('register_person')

    models = {
        'register.person': {
            'Meta': {'object_name': 'Person'},
            'abstract': ('django.db.models.fields.TextField', [], {'max_length': '20000', 'null': 'True', 'blank': 'True'}),
            'competition': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '255'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'housing': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'presentation': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rank': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['register.Rank']"}),
            'university': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        'register.rank': {
            'Meta': {'object_name': 'Rank'},
            'description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        }
    }

    complete_apps = ['register']